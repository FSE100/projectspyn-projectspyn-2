% Touch Sensor Program - Team 2

while 1
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 2.
    if touch
        brick.MoveMotor('BC', 0);  % Stop if the sensor was touched.
    end
end