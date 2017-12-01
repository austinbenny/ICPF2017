quiz 5
  
 1)
 
chainfile = importdata('chain.txt');
data = chainfile.data;
y = data(:,4);
x = linspace(10^0,10^5,length(data));
plot(x,y,'-r','LineWidth',2);
xlim([10^0 10^6]);
box on;
set(gca,'xscale','log');


 
 2)
 
 function output = robustWebRead(inputstring)
    disp('Reading data from the web address...');
    try 
        output = webread(inputstring);
        disp('Done.');
    catch
        error('DNE');
    end
end

 
  
 3) 
 
gcf - handle to a current figure, which is the window on which the graph exists
gca - handle to a current axis, on which you can set the axis to a scale or to a certain interval

