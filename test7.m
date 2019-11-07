distance = brick.UltrasonicDist(3);

while distance >= 28 % if the distance is at or above 28 units, we run the statement below
    
    distance = brick.UltrasonicDist(3);
    
    brick.MoveMotor('B', 40);
    brick.MoveMotor('C', 43);
    
    if distance < 28 % if the distance below 28 units, we run the statement below
        
        brick.MoveMotor('BC', 0); 
        brick.MoveMotorAngleRel('C', 40, -270, 'Brake');

        distance = brick.UltrasonicDist(3);
        
        while distance >= 15 % if the distance is at or above 15 units, we run the statement below
            
            distance = brick.UltrasonicDist(3);
            
            brick.MoveMotor('B', 40);
            brick.MoveMotor('C', 43);
            
            if distance < 15 % if the distance is below 15 units, we run the statement below
              
                brick.MoveMotorAngleRel('C', 40, 800, 'Brake');
                
            end
        end
        
    end
end
brick.StopMotor('BC', 'Coast');