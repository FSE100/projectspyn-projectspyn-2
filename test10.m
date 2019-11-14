global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'uparrow'
            brick.StopAllMotors('Brake');
            brick.MoveMotor('B', 40);
            brick.MoveMotor('C', 43);
            
            disp('Forward');
        case 'downarrow'
            brick.StopAllMotors('Brake');
            brick.MoveMotor('B', -40);
            brick.MoveMotor('C', -43);
            
            disp('Backward');
        case 'leftarrow'
            brick.MoveMotorAngleRel('C', 40, 270, 'Brake');
            disp('Left');
        case 'rightarrow'
            brick.MoveMotorAngleRel('C', 40, -270, 'Brake');
            disp('Right');
        case 'w'
            brick.MoveMotorAngleRel('A', 40, -120, 'Brake');
            disp('Up');
        case 's'
            brick.MoveMotorAngleRel('A', 40, 120, 'Brake');
            disp('Down');
        case 'a'
            brick.StopAllMotors('Brake');
            
        case 'q'
            brick.StopAllMotors('Brake');
            break;
    end
end

CloseKeyboard();
