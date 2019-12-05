% Autonomous Drop Off Program - Team 2

brick.SetColorMode(1, 2);
color = brick.ColorCode(1);


if color == 3 % Color green will drop off passenger
    brick.MoveMotorAngleRel('C', 35, 500, 'Brake'); % Going forward
    brick.MoveMotorAngleRel('B', 35, 500, 'Brake');
    pause(2);
    brick.MoveMotorAngleRel('A', 40, 200, 'Brake'); % Lower the lift
    pause(2);
    brick.MoveMotorAngleRel('C', 60, 240, 'Brake'); % Back Up
    brick.MoveMotorAngleRel('B', 60, 240, 'Brake');
    pause(2);
    
end