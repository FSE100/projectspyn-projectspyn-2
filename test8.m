
brick.SetColorMode(1, 2);
color = brick.ColorCode(1);

while color ~= 0  % as long as color is detected, we run the statement below
    
    color = brick.ColorCode(1);
    brick.MoveMotor('B', 40);
    brick.MoveMotor('C', 45);
    if color == 2 || color == 5 || color == 4 % if rgby color is detected, we run the statement below
        brick.MoveMotor('BC', 0); 
        return;
    end
end
