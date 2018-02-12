close all;
c = 9;
for j = 10:2:22
    Part_1(j,c);
    c = c + 1;
end
function Part_1(y,c)
load C:\Users\carlo\git\ICP2017F\Exam\Final\data\cells.mat;

nrow = round(sqrt(length(cells(1,1,:,:)))); 
ncol = nrow;                             


mainPlotMarginTop = 0.06;      
mainPlotMarginBottom = 0.12;    
mainPlotMarginLeft = 0.08;      
mainPlotMarginRight = 0.1;      
mainPlotPositionX = 0.05;      
mainPlotPositionY = 0.08;       
mainPlotWidth = 1 - mainPlotMarginRight - mainPlotPositionX; 
mainPlotHeight = 1 - mainPlotMarginTop - mainPlotPositionY; 
mainPlotTitleFontSize = 12;     
mainPlotAxisFontSize = 12;    


subPlotFontSize = 10;    
subplotInterspace = 0.03; 
subplotWidth = (1-mainPlotMarginLeft-mainPlotMarginRight-nrow*subplotInterspace)/ncol;   
subplotHeight = (1-mainPlotMarginTop-mainPlotMarginBottom-ncol*subplotInterspace)/nrow ; 

colorbarFontSize = 13;                                           
colorbarWidth = 0.03;                                            
colorbarPositionY = mainPlotMarginBottom;                        
colorbarPositionX = 1 - mainPlotMarginRight;                     
colorbarHeight = nrow*subplotHeight+(nrow-1)*subplotInterspace;  
colorLimits = [0,max(max(max(cells(:,:,:))))];                    


figHandle = figure();                           
figHandle.Visible = 'on';                       
figHandle.Position = [0, 0, 900, 1350];         
figHandle.Color = [0.9400 0.9400 0.9400];      


mainPlot = axes();              
mainPlot.Color = 'none';        
mainPlot.FontSize = 11;         
mainPlot.Position = [ mainPlotPositionX mainPlotPositionY mainPlotWidth mainPlotHeight ]; 
mainPlot.XLim = [0 1];          
mainPlot.YLim = [0 1];          
mainPlot.XLabel.String = 'Voxel Number in X Direction'; 
mainPlot.YLabel.String = 'Voxel Number in Y Direction'; 
mainPlot.XTick = [];            
mainPlot.YTick = [];            
mainPlot.XAxis.Visible = 'off'; 
mainPlot.YAxis.Visible = 'off'; 
mainPlot.XLabel.Visible = 'on'; 
mainPlot.YLabel.Visible = 'on'; 
mainPlot.Title.String = [strcat('Time = ',  (num2str(y)), ' Days. Brain MRI slices along Z-direction, Rat W09. No radiation treatment')]; % set the title of the figure
mainPlot.XLabel.FontSize = mainPlotAxisFontSize; 
mainPlot.YLabel.FontSize = mainPlotAxisFontSize; 
mainPlot.Title.FontSize = mainPlotTitleFontSize; 
axes(mainPlot);                       
caxis(colorLimits);                   
cbar = colorbar;                      
ylabel(cbar,'Number of Tumor Cells'); 
cbar.Position = [ colorbarPositionX ... 
                  colorbarPositionY ...
                  colorbarWidth ...
                  colorbarHeight ...
                ];
cbar.FontSize = colorbarFontSize;    

sliceNumber = 0;
for irow = nrow:-1:1
    for icol = 1:ncol
        sliceNumber = sliceNumber + 1;
        subPlot = axes( 'position', [ ... 
                                      (icol-1)*(subplotInterspace+subplotWidth) + mainPlotMarginLeft ...
                                      (irow-1)*(subplotInterspace+subplotHeight) + mainPlotMarginBottom ...
                                      subplotWidth ...
                                      subplotHeight ...
                                    ] ...
                      );
        imagesc(cells(:,:,sliceNumber,(y - c)),colorLimits);
        hold on;
        if icol~= 1
            subPlot.YTickLabels = [];
        end
        if irow ~= 1
            subPlot.XTickLabels = [];
        end
     subPlot.Title.String = ['z = ', num2str(sliceNumber)];
     subPlot.CLim = colorLimits;
    end
end
saveas(gcf,strcat('plotday',(num2str(y)),'.png'));        
end
