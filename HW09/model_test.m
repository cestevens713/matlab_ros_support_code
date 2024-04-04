function model_test(model_name, robot)
% Sends the robot gripper to the position of the model given as a parameter

% obtain the gripper and object poses for the specific model
[gripper_wrt_base_pose, object_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_name);
[gripper_wrt_base_pose0, hover_wrt_base_pose] = thievery(model_name);

% hover_object_pose = object_wrt_base_pose; 
% hover_object_pose(3,4) = 0.4;

% model_func(hover_object_pose, gripper_wrt_base_pose, robot)
model_func(hover_wrt_base_pose, gripper_wrt_base_pose, robot)
%pause(3)
model_func(object_wrt_base_pose, gripper_wrt_base_pose, robot)

end