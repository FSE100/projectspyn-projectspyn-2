distance = brick.UltrasonicDist(3);
brick.SetColorMode(1, 2);
color = brick.ColorCode(1);

while distance >= 25 % if the distance is at or above 51 units, we run the statement above
    
    distance = brick.UltrasonicDist(3);
    color = brick.ColorCode(1);
    brick.MoveMotor('BC', 40);
    
    if distance < 25
        brick.MoveMotor('BC', 0);
    end
end
