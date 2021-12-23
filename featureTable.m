function featureTable (avgHR, PSEfinal, label, i)
%% Construct the Feature Table
avgHR = avgHR';
PSEfinal = (real(PSEfinal))';

label = label(:,2);

N = length(avgHR); 
M = length(label);
if M<N
    avgHR = avgHR(1:M);
    PSEfinal = PSEfinal(1:M);
elseif N<M
    label = label(1:N);
end
featureT = [avgHR PSEfinal label];

Name = strcat('FeatureTablea',num2str(i),'.csv');

writematrix(featureT,Name);



end