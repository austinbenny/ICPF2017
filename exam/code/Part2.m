ERROR GRAPH

load ('..\data\cells.mat');
timeErr = zeros(1,7);
timeCells = zeros(1,7);
for Time = 10:2:22
    bnds = 0;
    c = 0;
    array = cells(:,:,:,(Time-10)/2+1);
    d = size(array);
    for j = 1:d(3)
        for k = 1:d(1)
            for i = 1:d(2)
                if i==1 || i==d(2) || k==1 || k==d(1) && array(k,i,j)~=0
                     bnds = bnds + array(k,i,j);
                 elseif i==1 || i==d(2) || k==1 || k==d(1) && (array(k,i,j)==0)
                 elseif array(k,i,j)~=0 && array(k+1,i,j)==0 || array(k-1,i,j)==0 || array(k,i+1,j)==0 || array(k,i-1,j)==0 || array(k-1,i-1,j)==0 || array(k+1,i+1,j)==0 || array(k-1,i+1,j)==0 || array(k+1,i-1,j)==0
                     bnds = bnds + array(k,i,j);
                 end
                 if array(k,i,j) ~= 0
                     c = c + array(k,i,j);
                 end
            end
        end
    end
    timeErr( (Time-10)/2+1 ) = bnds;
    timeCells( (Time-10)/2+1 ) = c;
end

timeErr=timeErr*0.5;
i = [0 10 12 14 16 18 20 22];
k = horzcat(100000,timeCells(1:7));
err = horzcat(10000,timeErr(1:7));
fig = figure;
errorbar(i,k,err,'LineWidth',2,'Marker','o','MarkerSize',4);
xlabel('Time [days]');
ylabel('Tumor Cell Count');
title('Gompertzian Fit to Rat''s Brain Tumor Growth','FontSize',10);
legend('show', 'location', 'northwest');
saveas(fig,'C:\Users\carlo\git\ICP2017F\Exam\Final\results\error-graph.png');
