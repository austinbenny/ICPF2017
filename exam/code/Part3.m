load ('..\data\cells.mat');
global timeArray data;
data = zeros(8, 1);
data(1) = 100000;
timeArray = [0, 10 12 14 16 18 20 22];
totalCellError = 0;
errorArr = zeros(8, 1);
errorArr(1) = 0;
params = [10, 0.1, 1];
tint = 0:.1:25;
figure();

G_Growth = @(t, N, lamda, c) N*exp(lamda*(1-exp(-c*t)));

for i = 1:7
    for j = 1:16
        Bi = imbinarize(cells(:, :, j, i));
        [B, L] = bwboundaries(Bi, 'noholes');
        if ~isempty(B)
            for m = 1:length(B)
                Array = B{m};
                for x = 1:length(Array) - 1
                    totalCellError = totalCellError + cells(Array(x, 1), Array(x, 2), j, i);
                end
            end
        end
        data(i + 1) = data(i + 1) + sum(sum(cells(:, :, j, i)));
    end
    errorArr(i + 1) = totalCellError/2;
    totalCellError = 0;
end

errorbar(timeArray, data, errorArr, 'b.-', 'linewidth', 3, 'MarkerSize', 32, 'DisplayName', 'Experimental Data');
hold on;

optimizedParamVals = fminsearch(@sumLogs, params);
plot(tint, G_Growth(tint, data(1), optimizedParamVals(1), optimizedParamVals(2)), 'linewidth', 4, 'color', 'r', 'DisplayName', 'Gomertizan Fit');


xlabel('Time [Days]');
ylabel('Tumor Cell Count');
title('Gompertzian Fit to Rat''s Brain Tumor Growth', 'fontsize', 12);
legend('show', 'location', 'northwest');
saveas(gcf, 'Gompertizan Fit plot.png');

fileParam = fopen('fileWithParams.txt', 'w');
fprintf(fileParam, ['Lamda: ', num2str(optimizedParamVals(1)), ...
    ', C-Value: ', num2str(optimizedParamVals(2)), ...
    ', Sigma: ', num2str(optimizedParamVals(3))]);
fclose(fileParam);
function output = sumLogs(params)
    global dataVals timeArray;
    GompGrowth = @(t, N, lamda, c) N*exp(lamda*(1-exp(-c*t)));
    probDensity = @(N_Obs, sigma, GompGrowthVal) log((1/(N_Obs*sigma*sqrt(2*pi))) * ...
        exp((-(log(N_Obs) - log(GompGrowthVal))^2)/(2*sigma^2)));
    output = 0;
    for n = 1:length(dataVals)
        GompGrowthVal = GompGrowth(timeArray(n), dataVals(1), params(1), params(2));
        output = output + probDensity(dataVals(n), params(3), GompGrowthVal);
    end
output = -1 * output; 
end
