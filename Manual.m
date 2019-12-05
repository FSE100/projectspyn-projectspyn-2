% Manual mode - Team 2
global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'uparrow'
            brick.StopAllMotors('Brake'); 
            brick.MoveMotor('B', 50);
            brick.MoveMotor('C', 50);
            disp('Drive Forward');
            
        case 'downarrow'
            brick.StopAllMotors('Brake');
            brick.MoveMotor('B', -40);
            brick.MoveMotor('C', -40);            
            disp('Drive Backward');
            
        case 'leftarrow'
            brick.MoveMotorAngleRel('C', 40, 360, 'Brake');
            disp('Turn Left');
            
        case 'rightarrow'
            brick.MoveMotorAngleRel('C', 40, -360, 'Brake');
            disp('Turn Right');
            
        case 'w'
            brick.MoveMotorAngleRel('A', 40, -120, 'Brake');
            disp('Move Lift Up');
            
        case 's'
            brick.MoveMotorAngleRel('A', 40, 120, 'Brake');
            disp('Move Lift Down');
            
        case 'a'
            brick.StopAllMotors('Brake');
            disp('Stopped');
            
        case 'q'
            brick.StopAllMotors('Brake');
            disp('Ended');
            break;
    end
end

CloseKeyboard();
