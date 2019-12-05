% Color Sensor Program - Team 2

brick.SetColorMode(1, 2);
color = brick.ColorCode(1);

while color ~= 0 % as long as color is detected, we run the statement below
    
    color = brick.ColorCode(1);
    brick.MoveMotor('B', 40);
    brick.MoveMotor('C', 42);
           
        if color == 3 || color == 5
            color = brick.ColorCode(1);
            brick.MoveMotor('BC', 0);
            Manual;      
        end
end