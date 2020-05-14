% code for estimating the confidence intervals when variance is unknown (sample variance from vector X )
clc
m=100;
n1=10;
% UNCOMMENT THE N1 VALUE ACCORDINGLY
%n1=100;
%n1=1000;
countn1=0;
tber=0.5*erfc((0.5)^0.5)
% my name is SAI KRISHNA; SO A=16, E=64, I=256, O = 512, U = 1024)
%     %SEED =16+256+256+16=544
rng(544,"twister");




for i=1:m
    % my name is SAI KRISHNA; SO A=16, E=64, I=256, O = 512, U = 1024)
    %SEED =16+256+256+16=544
    x=zeros(1,n1);
    for j=1:n1
        %rng(544,"twister");
        r=-1.+randn(1,n1);
        if r(1,j)>=0    % the bit b is -ve; so if the received value is +ve, then error occurs, and we set x=1
            x(1,j)=1;
        elseif r(1,j)<0        % the bit b is -ve; so if the received value is -ve, then no error has occured, and we set x=0
            x(1,j)=0;
        end
    end
    % computing the sample mean M of the X matrix: 
    M=mean(x,'all')
    % Confidence interval is [ M-((y*sigmax)/(n^0.5)) , M+((y*sigmax)/(n^0.5)) ]
    y=1;
    % since we estimate the y for 68.3% confidence, the y=1; as in a standard
    % dev case, the 68.3 % is obtained in + or - one sigma
    
    
    sigmax=std( x(:) )
    % finding the lower and upper limits of confidence intervals
    lln1=M-((y*sigmax)/(n1^0.5))
    uln1=M+((y*sigmax)/(n1^0.5))
    if tber>=lln1 && tber<=uln1
        countn1=countn1+1
    end
    k=i;
    if k<=10
        plot(k,lln1,"Marker","o","Color","red")
        hold on
        plot(k,tber,"Marker","<","Color","blue")
        hold on
        plot(k,M,"Marker",".","Color","green")
        hold on
        plot(k,uln1,"Marker","*","Color","yellow")
        legend({"lower confidence interval 'o'","true mean (ber) '<'","sample mean (M) '.' ","upper confidence interval '*'"},'FontSize',12,'TextColor','blue')
        title("n1=10;VARIANCE UNKNOWN")
        % I use the appropriate ttile for different n values of 10,100,1000
        % accordingly
        %title("n1=100;VARIANCE UNKNOWN")
        %title("n1=1000;VARIANCE UNKNOWN")
        xlabel("# no. of the trial")
        ylabel("Values of the 4 parameters")
        
    end

        
end

fprintf("Percentage of true mean within the confidence interval is %d ",countn1)

