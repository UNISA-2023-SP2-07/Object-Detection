# MODEL CREATION
## Models, description and development

| Model | Description | Development |
| ----------- | ----------- | ----------- |
| AMR | Created with links of robot joints and robot mobile base (modeling from the asset)| Create joints to connect links together. Create physic interaction control for each joints. Create robot with laser sensor to detect the object in front of them using SLAM. |
| mobile_robot_with_arm | Created with links of robot joints and robot mobile base (modeling from the asset) | Create joint between robot arm and robot mobile base. Add physic plugins for the wheels control. Create robot with laser sensor to detect the object in front of them using SLAM. Create RGBD camera to allow robot to view the world in colors and depth based on computer vision, then, using Object Detection integrated to identify the object (i.e pipette) to process further.|
| cobot_room | Based on the RAH floor plan, design a cobot workingspace area | Model the workspace setting for cobot environment (robot arm)|
| RAH_lab | Based on the RAH floor plan, provide a full design of the plan | Model the whole area of the RAH and working environment of the mobile robot |