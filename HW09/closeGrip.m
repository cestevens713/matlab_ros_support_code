% How closed do you want the gripper to be? (0 is closed, 0.8 is open)
function closeGrip(gripper)


grip_client = rosactionclient('/gripper_controller/follow_joint_trajectory',...
                              'control_msgs/FollowJointTrajectory',...
                              'DataFormat', 'struct');
gripGoal    = rosmessage(grip_client);
gripPos     = gripper; %0.22 is grab for a can upright
gripGoal    = packGripGoal(gripPos,gripGoal);
pause(3);
sendGoal(grip_client,gripGoal)

end