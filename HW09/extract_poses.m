% Extracting all the points from the models
%% Setup
masterhostIP = "192.168.183.128";
rosshutdown;
rosinit(masterhostIP)

%disp('Going home...');
%goHome('qr');    % moves robot arm to a qr or qz start config

%disp('Resetting the world...');
resetWorld      % reset models through a gazebo service

%% Make an array of all models we will use 
models = getModels; 
% green cans
model_gCan1 = models.ModelNames{20}; % 'gCan1', left gray zone
model_gCan2 = models.ModelNames{21}; % 'gCan2', yellow zone
model_gCan3 = models.ModelNames{22}; % 'gCan3', right gray zone
model_gCan4 = models.ModelNames{23}; % 'gCan4', blue zone
% red cans
model_rCan1 = models.ModelNames{24}; % 'rCan1', left gray zone
model_rCan2 = models.ModelNames{25}; % 'rCan2', right gray zone
model_rCan3 = models.ModelNames{26}; % 'rCan3', red zone
% yellow cans
model_yCan1 = models.ModelNames{27}; % 'yCan1', red zone
model_yCan2 = models.ModelNames{28}; % 'yCan2', blue zone
model_yCan3 = models.ModelNames{29}; % 'yCan3', blue zone
model_yCan4 = models.ModelNames{30}; % 'yCan4', blue zone
% green bin
gBin = models.ModelNames{6};

robot = loadrobot("universalUR5e",DataFormat="row"); 

% green cans
[gripper_wrt_base_pose, gCan1_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_gCan1);
gCan1_hover_pose = gCan1_wrt_base_pose; gCan1_hover_pose(3,4) = 0.6;
[gripper_wrt_base_pose, gCan2_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_gCan2);
gCan2_hover_pose = gCan2_wrt_base_pose; gCan2_hover_pose(3,4) = 0.4;
 [gripper_wrt_base_pose, gCan3_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_gCan3);
 gCan3_hover_pose = gCan3_wrt_base_pose; gCan3_hover_pose(3,4) = 0.4;
[gripper_wrt_base_pose, gCan4_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_gCan4);
gCan4_hover_pose = gCan4_wrt_base_pose; gCan4_hover_pose(3,4) = 0.4;

% red cans
[gripper_wrt_base_pose, rCan1_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_rCan1);
rCan1_hover_pose = rCan1_wrt_base_pose; rCan1_hover_pose(3,4) = 0.4;
[gripper_wrt_base_pose, rCan2_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_rCan2);
rCan2_hover_pose = rCan2_wrt_base_pose; rCan2_hover_pose(3,4) = 0.4;
[gripper_wrt_base_pose, rCan3_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_rCan3);
rCan3_hover_pose = rCan3_wrt_base_pose; rCan3_hover_pose(3,4) = 0.4;

% yellow cans
[gripper_wrt_base_pose, yCan1_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_yCan1);
yCan1_hover_pose = yCan1_wrt_base_pose; yCan1_hover_pose(3,4) = 0.4;
[gripper_wrt_base_pose, yCan2_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_yCan2);
yCan2_hover_pose = yCan2_wrt_base_pose; yCan2_hover_pose(3,4) = 0.4;
[gripper_wrt_base_pose, yCan3_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_yCan3);
yCan3_hover_pose = yCan3_wrt_base_pose; yCan3_hover_pose(3,4) = 0.4;
[gripper_wrt_base_pose, yCan4_wrt_base_pose] = get_robot_object_pose_wrt_base_link(model_yCan4);
yCan4_hover_pose = yCan4_wrt_base_pose; yCan4_hover_pose(3,4) = 0.4;

% green bin
[gripper_wrt_base_pose, gBin_wrt_base_pose] = get_robot_object_pose_wrt_base_link(gBin);


