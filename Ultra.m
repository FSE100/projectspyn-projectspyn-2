% Ultrasonic Sensor Program - Team 2

distance = brick.UltrasonicDist(3);

dale = true;
dale1 = true;

while dale
    
    distance = brick.UltrasonicDist(3);
    
    % if the distance greater than 25 units, we run the statement below
    
    brick.MoveMotor('B', 40);
    brick.MoveMotor('C', 43);
    
    if distance < 20
        
        brick.StopAllMotors('Brake');
        brick.MoveMotorAngleRel('C', 40, -400, 'Brake');
        distance = brick.UltrasonicDist(3);
        dale = false;
        
    end
end

while dale1
    
    distance = brick.UltrasonicDist(3);
    
    % if the distance greater than 25 units, we run the statement below
    
    brick.MoveMotor('B', 40);
    brick.MoveMotor('C', 43);
    
    if distance < 20
        
        brick.StopAllMotors('Brake');
        brick.MoveMotorAngleRel('C', 40, -400, 'Brake');
        distance = brick.UltrasonicDist(3);
        dale1 = false;
    end
end
