% Color Sensor Program - Team 2

brick.SetColorMode(1, 2);
color = brick.ColorCode(1);

while color ~= 0  % as long as color is detected, we run the statement below
    
    color = brick.ColorCode(1);
    brick.MoveMotor('B', 40);
    brick.MoveMotor('C', 43);
    if color == 5 || color == 4 % if rgby color is detected, we run the statement below
        brick.MoveMotor('BC', 0);
        
        return;
        
        if color == 2
            brick.MoveMotor('BC', 0);
            test10;
            
            
        end
    end
end