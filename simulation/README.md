# USER MANUAL - HOW TO RUN A SIMULATION WORKSPACE
---
## SET UP THE ENVIRONMENT
The robot integration will be run via Robot Operation System (ROS) which is only supported the best in a Linux environment. Therefore, to be able to run the simulation, we will need to set up the Linux and ROS integrated environment for the best experience.

In this set up, we will use:

* Unbuntu 20.04
* ROS Noetic
* Gazebo Citadel

### Set up Linux 
[Install Ubuntu 20.04 LTS](https://releases.ubuntu.com/jammy/)

### Set up ROS
[Install ROS Noetic](http://wiki.ros.org/Installation/Ubuntu)

### Set up Gazebo
[Install Gazebo to support ROS Noetic](https://classic.gazebosim.org/tutorials?tut=install_ubuntu)

### Clone project repo (simulation on roc-robot-coordination)
```
git clone -b ros-robot-coordination <remote-repo-url>
cd Object-Detection
git sparse-checkout set simulation
```

## RUN THE ROBOT SIMULATION
### Source the packages and plugins lib before running
The system needs to be notified about the existence of the packages to be able to connect to the ROS environment. 

***REQUIRED**: Run on the terminal before every launch*

```
source /opt/ros/noetic/setup.bash # source ros environment
source ~/Object-Detection/simulation/catkin_ws/devel/setup.bash # source simulation package
source /usr/share/gazebo-11/setup.sh # source gazebo plugin packages 
```

**DEBUG** 

Sometimes the system does not recognise whether the environment has been set up with the ros package or not. To test if rospackage exists in the workspace, run:

`rospack find gazebo_sim`

### Start the simulation
1. Start roslaunch for gazebo editor:
   
   `roslaunch gazebo_sim {NAME-OF-LAUNCH-FILE.launch}`

   Currently, in the system, 2 ROS launch files have been set to launch the world of the cobot workspace and the mobile robot setup in the lab. This will allow the user to run the simulation on the Gazebo editor.

   Launch files:
   ```
   lab_l.launch --> launch file of world cobot_ws_world.sdf
   lab_with_obs.launch --> launch file of world lab_amr_world.sdf
   ```
   
3. Start gazebo GUI:

   GUI allows the user to show the simulation along with the robot's orientation and manipulation. In here, the user can control the robot base and the robot arm joint movements.
   
   ```
   cd ~/Object-Detection/simulation/catkin_ws/src/gazebo_sim/worlds/
   ign gazebo {NAME-OF-WORLD}.sdf -v 4
   ```

   Show stats of the simulation in the new terminal:
   
   `ign topic -e -t /world/{WORLD-NAME}/stats`
   
## BUILD THE ROS PACKAGE
Build the single package

`catkin_make --only-pkg-with-deps gazebo_sim`

`catkin_make -DCATKIN_WHITELIST_PACKAGES=""` to build all at the end

Build the whole catkin workspace

`catkin_make`
## DEBUGGING
No public key for`W:GPG error: http://packages.ros.org/ros2/ubuntu focal InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY `:

`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F42ED6FBAB17C654`

Tool installment

```
sudo apt install ros-noetic-gazebo-ros-pkgs
sudo apt install ros-noetic-ros-core ros-noetic-geometry2
```

## OBJECT-DETECTION MODEL INTEGRATION
### Inference with Custom Model
```
%cd {HOME}
!yolo task=detect mode=predict model={HOME}/runs/detect/train/weights/best.pt conf=0.25 source={dataset.location}/test/images save=True
```

Result of the inference (test)
```
import glob
from IPython.display import Image, display

for image_path in glob.glob(f'{HOME}/runs/detect/predict/*.jpg')[:10]:
      display(Image(filename=image_path, width=640))
      print("\n")
```

### Deploy model on Roboflow

Once you have finished training your YOLOv8 model, you’ll have a set of trained weights ready for use. These weights will be in the `/runs/detect/train/weights/best.pt` folder of your project. You can upload your model weights to Roboflow Deploy to use your trained weights on our infinitely scalable infrastructure.

The `.deploy()` function in the [Roboflow pip package](https://docs.roboflow.com/python) now supports uploading YOLOv8 weights.

To upload model weights, add the following code to the “Inference with Custom Model” section in the aforementioned notebook:

```
!pip install roboflow

from roboflow import Roboflow
rf = Roboflow(api_key="D1r3hyiOBsbn1cCkuDwd")
project = rf.workspace("pipette-detection").project("pipettes-detection")
dataset = project.version(12).download("yolov8")
```

```
project.version(dataset.version).deploy(model_type="yolov8", model_path=f"{HOME}/runs/detect/train/")
```

```
#Run inference on your model on a persistant, auto-scaling, cloud API

#load model
model = project.version(dataset.version).model

#choose random test set image
import os, random
test_set_loc = dataset.location + "/test/images/"
random_test_image = random.choice(os.listdir(test_set_loc))
print("running inference on " + random_test_image)

pred = model.predict(test_set_loc + random_test_image, confidence=40, overlap=30).json()
pred
```

```
ROBOFLOW_KEY=D1r3hyiOBsbn1cCkuDwdv ./infer.sh pipettes-detection/11 IMG_3203.mov fish.gif --fps_in 3 --fps_out 12 --scale 4
```
## RESOURCES
[Create world in Gazebo](https://campus-rover.gitbook.io/lab-notebook/fiiva/create-gazebo.world)

[Connect computer vision to project logic](https://roboflow.com/templates)
