function s = Shipsimu()
N = 100;
    x = [rand,rand];
    y = [rand,rand];
    z = [rand,rand];
timey = 0;
h = scatter3(x,y,z);
dist = 0;
for ii = 1:50
    x(1) = rand;
    y(1) = rand;
    z(1) = rand;
    set(h,'XData',x,'YData',y,'ZData',z);
    drawnow
    dist = sqrt(((x(1)-x(2))^2)+((y(1)-y(2))^2)+((z(1)-z(2))^2));
    angle = acosd(((x(1)*x(2)) + (y(1)*y(2)) + (z(1)*z(2))) / dist)
    fprintf("distance = \n\n")
    disp(dist);
    
    pause(1)
    if(angle < 45 && dist < 0.3)
        fprintf("Ship 1 destroyed Ship 2!\n")
        break
    end
    x(2) = rand;
    y(2) = rand;
    z(2) = rand;
    set(h,'XData',x,'YData',y,'ZData',z);
    drawnow
    dist = sqrt(((x(1)-x(2))^2)+((y(1)-y(2))^2)+((z(1)-z(2))^2));
    angle = acosd(((x(1)*x(2)) + (y(1)*y(2)) + (z(1)*z(2))) / dist)
    fprintf("distance = \n\n")
    disp(dist);
    
    pause(1)
    if(angle < 45 && dist < 0.3)
        fprintf("Ship 2 destroyed Ship 1!\n")
        break
    end
   timey = timey + 1;
end