function model_goal_send(model_name, robot)
% Sends the robot gripper to the position of the model given as a parameter

% obtain the gripper and object poses for the specific model
[gripper_wrt_base_pose, object_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_name);

% compute matlab waypoints via ctraj
traj_steps = 2;
mat_traj = ctraj(gripper_wrt_base_pose, object_wrt_base_pose, traj_steps);
[mat_joint_traj,rob_joint_names] = convertPoseTraj2JointTraj(robot, mat_traj, 0);

% communicate via action client
traj_act_client = rosactionclient('/pos_joint_traj_controller/follow_joint_trajectory',...
                                           'control_msgs/FollowJointTrajectory', ...
                                           'DataFormat', 'struct');
traj_goal = rosmessage(traj_act_client); 
traj_steps          = 2;     % Num of traj steps
traj_duration       = 2;     % Traj duration (secs)

traj_goal = convert2ROSPointVec(mat_joint_traj,rob_joint_names,traj_steps,traj_duration,traj_goal);

% send the goal!
pause(2);
sendGoal(traj_act_client,traj_goal); 

end