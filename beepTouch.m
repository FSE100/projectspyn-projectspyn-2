clc;

while 1
    touch = brick.TouchPressed(2); % Read a touch sensor connected to port 1.
    if touch
        brick.beep();     % Beep if the sensor was touched.
    end
end
