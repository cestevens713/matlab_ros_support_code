% HW09 main
%% Setup
masterhostIP = "192.168.183.128";
rosshutdown;
rosinit(masterhostIP)
models_yxz

disp('Going home...');
goHome('qr');    % moves robot arm to a qr or qz start config

disp('Resetting the world...');
resetWorld      % reset models through a gazebo service

%% Hard-coded way (but hey it works)
models_yxz
% gCan1
sending_goals(gCan1_yxz(1),gCan1_yxz(2),0.4);
sending_goals(gCan1_yxz(1),gCan1_yxz(2),gCan1_yxz(3));
closeGrip(0.25);
sending_goals(gCan1_yxz(1),gCan1_yxz(2),0.4);
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% rCan1
sending_goals(rCan1_yxz(1),rCan1_yxz(2),0.4);
sending_goals(rCan1_yxz(1),rCan1_yxz(2),rCan1_yxz(3));
closeGrip(0.24);
sending_goals(rCan1_yxz(1),rCan1_yxz(2),0.4);
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% yCan1
sending_goals(yCan1_yxz(1),yCan1_yxz(2),0.4);
sending_goals(yCan1_yxz(1),yCan1_yxz(2),yCan1_yxz(3));
closeGrip(0.25);
sending_goals(yCan1_yxz(1),yCan1_yxz(2),0.4);
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% rCan3
sending_goals(rCan3_yxz(1),rCan3_yxz(2),0.4);
sending_goals(rCan3_yxz(1),rCan3_yxz(2),rCan3_yxz(3));
closeGrip(0.25);
sending_goals(rCan3_yxz(1),rCan3_yxz(2),0.4);
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% gCan2
sending_goals(gCan2_yxz(1),gCan2_yxz(2),0.4);
sending_goals(gCan2_yxz(1)-0.02,gCan2_yxz(2),gCan2_yxz(3)-0.04);
closeGrip(0.245);
sending_goals(gCan2_yxz(1),gCan2_yxz(2),0.4);
goHome_noGrip('qr'); % added bc of funky movements
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% % yCan2 --problematic  --sideways
% sending_goals(yCan2_yxz(1),yCan2_yxz(2),0.4);
% sending_goals(yCan2_yxz(1)-0.02,yCan2_yxz(2),yCan2_yxz(3));
% sending_goals(yCan2_yxz(1)-0.02,yCan2_yxz(2),yCan2_yxz(3)-0.01);
% closeGrip(0.245);
% sending_goals(yCan2_yxz(1),yCan2_yxz(2),0.4);
% goHome_noGrip('qr');
% sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
% closeGrip(0); % fully open
% goHome('qr');
% yCan3
sending_goals(yCan3_yxz(1),yCan3_yxz(2),0.4);
sending_goals(yCan3_yxz(1),yCan3_yxz(2),yCan3_yxz(3));
closeGrip(0.25);
sending_goals(yCan3_yxz(1),yCan3_yxz(2),0.4);
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% gCan4
sending_goals(gCan4_yxz(1),gCan4_yxz(2),0.4);
sending_goals(gCan4_yxz(1),gCan4_yxz(2),gCan4_yxz(3));
closeGrip(0.26);
sending_goals(gCan4_yxz(1),gCan4_yxz(2),0.4);
goHome_noGrip('qr');
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% yCan4 --sideways
sending_goals(yCan4_yxz(1),yCan4_yxz(2),0.4);
sending_goals(yCan4_yxz(1),yCan4_yxz(2),yCan4_yxz(3));
sending_goals(yCan4_yxz(1),yCan4_yxz(2),yCan4_yxz(3)-0.05);
closeGrip(0.25);
sending_goals(yCan4_yxz(1),yCan4_yxz(2),0.4);
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% rCan2
goHome('qz');
sending_goals(0.03,rCan2_yxz(2)-0.1,0.5); % step 1
sending_goals(rCan2_yxz(1)+0.1,rCan2_yxz(2)-0.1,0.5); % step 2
%sending_goals(rCan2_yxz(1),rCan2_yxz(2),0.4);
sending_goals(rCan2_yxz(1),rCan2_yxz(2),rCan2_yxz(3)+0.1); % step 3
sending_goals(rCan2_yxz(1),rCan2_yxz(2),rCan2_yxz(3)); % step 4
sending_goals(rCan2_yxz(1),rCan2_yxz(2)-0.01,rCan2_yxz(3)); % step 5
closeGrip(0.25);
sending_goals(rCan2_yxz(1),rCan2_yxz(2)-0.025,rCan2_yxz(3)); % step 5
sending_goals(rCan2_yxz(1),rCan2_yxz(2),rCan2_yxz(3)); % step 4
sending_goals(rCan2_yxz(1),rCan2_yxz(2),rCan2_yxz(3)+0.1); % step 3
sending_goals(rCan2_yxz(1)+0.1,rCan2_yxz(2)-0.1,0.5); % step 2
sending_goals(0.03,rCan2_yxz(2)-0.1,0.5); % step 1
goHome_noGrip('qr');
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');
% gCan3
sending_goals(gCan3_yxz(1),gCan3_yxz(2),0.4);
sending_goals(gCan3_yxz(1),gCan3_yxz(2),gCan3_yxz(3));
closeGrip(0.25);
sending_goals(gCan3_yxz(1),gCan3_yxz(2),0.4);
sending_goals(gBin_yxz(1),gBin_yxz(2),gBin_yxz(3)); % green bin
closeGrip(0); % fully open
goHome('qr');

%% Make an array of all models we will use 
% models = getModels; 
% % green cans
% model_gCan1 = models.ModelNames{20}; % 'gCan1', left gray zone
% model_gCan2 = models.ModelNames{21}; % 'gCan2', yellow zone
% model_gCan3 = models.ModelNames{22}; % 'gCan3', right gray zone
% model_gCan4 = models.ModelNames{23}; % 'gCan4', blue zone
% % red cans
% model_rCan1 = models.ModelNames{24}; % 'rCan1', left gray zone
% model_rCan2 = models.ModelNames{25}; % 'rCan2', right gray zone
% model_rCan3 = models.ModelNames{26}; % 'rCan3', red zone
% % yellow cans
% model_yCan1 = models.ModelNames{27}; % 'yCan1', red zone
% model_yCan2 = models.ModelNames{28}; % 'yCan2', blue zone
% model_yCan3 = models.ModelNames{29}; % 'yCan3', blue zone
% model_yCan4 = models.ModelNames{30}; % 'yCan4', blue zone

%% Functions
%TODO: Robot is moving super funky. Either figure that out or
%      just extract the points and do it the other way.
% robot = loadrobot("universalUR5e",DataFormat="row"); 

% % green cans
% hover_zone("left gray"); % hover over the correct zone for the desired object
% model_goal_send(model_gCan1, robot); % calculate and send the goal based on the model position
% hover_zone("yellow");
% model_goal_send(model_gCan2, robot);
% hover_zone("right gray");
% model_goal_send(model_gCan3, robot);
% hover_zone("blue");
% model_goal_send(model_gCan4, robot);
% % red cans
% hover_zone("left gray");
% model_goal_send(model_rCan1, robot);
% hover_zone("right gray");
% model_goal_send(model_rCan2, robot);
% hover_zone("red");
% model_goal_send(model_rCan3, robot);
% % yellow cans
% hover_zone("red");
% model_goal_send(model_yCan1, robot);
% hover_zone("blue");
% model_goal_send(model_yCan2, robot);
% hover_zone("blue");
% model_goal_send(model_yCan3, robot);
% hover_zone("blue");
% model_goal_send(model_yCan4, robot);
