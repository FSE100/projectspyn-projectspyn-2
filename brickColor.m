brick.SetColorMode(1, 2);  % Set Color Sensor connected to Port 1 to Color Code Mode

color = brick.ColorCode(1);  % Get Color on port 1.

%print color of object

display(color);