figure;
hold on;
r = 1;
th = 0:pi/50:2*pi;
xunit = r * cos(th);
yunit = r * sin(th);
h = plot(xunit, yunit);

rectangle('Position',[-1 -1 2 2])

N = 10000
x = rand(1 , N) * 2 - 1
y = rand(1 , N) * 2 - 1

sz = 15;

c = zeros(1, length(x));
count = 0;

for i=1:length(x)
    x1 = x(1,i);
    y1 = y(1,i);
    h = sqrt((x1^2) + (y1^2));
    if h <= 1
        count = count + 1;
        c(1, i) = 1;
    else
        c(1, i) = 0;
    end
end

scatter(x,y,sz,c,'filled')

x0=10;
y0=10;
width=550;
height=520;
set(gcf,'position',[x0,y0,width,height])

count

pi_estimation = 4 * (count / N)