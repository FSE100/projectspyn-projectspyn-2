% Ultrasonic Sensor Program - Team 2

distance = brick.UltrasonicDist(3);

while distance > 1
    
    distance = brick.UltrasonicDist(3);
    
    if distance >= 25 % if the distance greater than 25 units, we run the statement below
        
        brick.MoveMotor('B', 40);
        brick.MoveMotor('C', 42);
             
    else
        
        brick.MoveMotorAngleRel('C', 40, -360, 'Brake');
          
    if distance >= 25 % if the distance is below 25 units, we run the statement below
        
        brick.MoveMotor('B', 40);
        brick.MoveMotor('C', 42);
           
    else
        
        brick.MoveMotorAngleRel('C', 40, 720, 'Brake');
        
    end
        
    if distance <= 25
        
        brick.MoveMotorAngleRel('C', 40, 720, 'Brake');
        
        
    end
    
    end
end

brick.MoveMotorAngleRel('C', 40, 720, 'Brake');


