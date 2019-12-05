% *****THIS IS IT*****
% Operation Ultra

% Initialize our sensors
brick.SetColorMode(1, 2);
color = brick.ColorCode(1);
distance = brick.UltrasonicDist(4);

% Start with no states!
state0 = false;
state1 = false;
state2 = false;
state3 = false;
state4 = true;

while color ~= 3 % As long as color sensor works, this while loop will never end
    
    % Continuously update our sensors
    color = brick.ColorCode(1);
    distance = brick.UltrasonicDist(4);
    fprintf('%d', distance);
    
    % Red or Blue / State 5
    if color == 2 || color == 5
        
        brick.MoveMotor('BC', 0);
        distance = brick.UltrasonicDist(4);
        disp('Stopping for Color');
        pause(3);
        distance = brick.UltrasonicDist(4);
    end
    
    % Manual Call Mode
    if color == 4 % Yellow / State 6
        
        brick.MoveMotor('BC', 0);
        distance = brick.UltrasonicDist(4);
        disp('Stopping for Pick Up Mode');
        Manual;
        pause(3);
        
    end
    
    % Autonomous Drop Off Mode
    if color == 3 % Green / State 7
        
        brick.MoveMotor('BC', 0);
        distance = brick.UltrasonicDist(4);
        disp('Stopping for Drop Off Mode');
        DropOff;
        pause(3);
        
    end
    
    % State 0
    if distance > 40 && (color ~= 2 || color == ~3 || color == ~4 || color == ~5) && state4 == true
        
        state0 = true;
        state1 = false;
        state2 = false;
        state3 = false;
           
        brick.MoveMotorAngleRel('C', 55, 950, 'Brake');
        brick.MoveMotorAngleRel('B', 55, 950, 'Brake');
        
        distance = brick.UltrasonicDist(4);
        disp('Going Straight');
        pause(5);
        distance = brick.UltrasonicDist(4);
        
        
        
    end
    
    % Try this code VVV if the nested if statement does not work.
    %     if color == 2 || color == 5
    %
    %         brick.MoveMotor('BC', 0);
    %         distance = brick.UltrasonicDist(3);
    %         disp('Stopping');
    %         pause(3);
    %     end
    
    % State 1
    if state0 == true && state1 == false
        
        state1 = true;
        state0 = false;
        
        brick.MoveMotorAngleRel('C', 40, -360, 'Brake');
        distance = brick.UltrasonicDist(4);
        disp('90 Degrees to the Right');
        pause(4);
        distance = brick.UltrasonicDist(4);
    end
    
    distance = brick.UltrasonicDist(4);
    
    % State 2
    if (distance < 40 || distance == 40) && state0 == false && state1 == true
        
        state2 = true;
        state0 = false;
        
        brick.MoveMotorAngleRel('C', 40, 720, 'Brake');
        distance = brick.UltrasonicDist(4);
        disp('180 Degrees to the Left');
        pause(5);
        distance = brick.UltrasonicDist(4);
        
    end
    
    distance = brick.UltrasonicDist(4);
    
    % State 3
    if (distance < 40 || distance == 40) && state0 == false && state1 == true && state2 == true
        
        state3 = true;
        state0 = false;
        
        brick.MoveMotorAngleRel('C', 30, -360, 'Brake');
        distance = brick.UltrasonicDist(4);
        disp('90 Degrees to the Front');
        pause(4);
        distance = brick.UltrasonicDist(4);
        
    end
    
    distance = brick.UltrasonicDist(4);
    
    % State 4
    if (distance < 40 || distance == 40) && state0 == false && state1 == true && state2 == true && state3 == true
        
        state4 = true;
        state0 = false;
        
        brick.MoveMotorAngleRel('C', 30, 720, 'Brake');
        distance = brick.UltrasonicDist(4);
        disp('180 Degrees to the Back');
        pause(5);
        distance = brick.UltrasonicDist(4);
        
    end
    
    distance = brick.UltrasonicDist(4);
    
end
