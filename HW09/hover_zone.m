function hover_zone(zone)
% Tells the robot the coordinates of each hover zone (fixed z)
%TODO: figure out the actual locations of the hover zones
%      (doesn't have to be exact)
    if zone == "left gray"
        %move to left gray zone
        hover_goal_send(0.8,-0.035);
    end
    if zone == "red"
        %move to red zone
        hover_goal_send(0.8,-0.035);
    end
    if zone == "blue"
        %move to blue zone
        hover_goal_send(0.8,-0.035);
    end
    if zone == "right gray"
        %move to right gray zone
        hover_goal_send(0.8,-0.035);
    end
    if zone == "yellow"
        %move to yellow zone
        hover_goal_send(0.8,-0.035);
    end
end