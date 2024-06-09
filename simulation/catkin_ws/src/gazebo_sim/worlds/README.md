# WORLDS
## Worlds description and specification

| World | Description | Object | Interfaces |
| ----------- | ----------- |  ----------- | ----------- |
| lab_amr_world | This is the world for the autonomous mobile robot to move around the set up of the designed RAH lab. | Office object, set up for the working space with robot and station for the robot environment. | camera RGBD, mobile robot controller using ASWD, velocity monitoring |
| cobot_ws_world | This is the world for the robot arm to move and perform sample handling. The setting allow roobot ot work with the pipettes in the pre-fixed set up surrounding environment. | Pipettes to work with the workspace of the human-robot collaboration setting. Set up for the robot arm to be mounted in the setting. | camera RGBD, robot arm joint controller using sliders, velocity monitoring |


