function combine

sigmadragtemp=zeros(61,61);

load('sigmadragvals1.mat','sigmadrag')
sigmadragtemp(1:20,:)=sigmadrag(1:20,:);

load('sigmadragvals2.mat','sigmadrag')
sigmadragtemp(21:29,:)=sigmadrag(21:29,:);

load('sigmadragvals3.mat','sigmadrag')
sigmadragtemp(30:36,:)=sigmadrag(30:36,:);

load('sigmadragvals4.mat','sigmadrag')
sigmadragtemp(37:42,:)=sigmadrag(37:42,:);

load('sigmadragvals5.mat','sigmadrag')
sigmadragtemp(43:47,:)=sigmadrag(43:47,:);

load('sigmadragvals6.mat','sigmadrag')
sigmadragtemp(48:51,:)=sigmadrag(48:51,:);

load('sigmadragvals7.mat','sigmadrag')
sigmadragtemp(52:55,:)=sigmadrag(52:55,:);

load('sigmadragvals8.mat','sigmadrag')
sigmadragtemp(56:58,:)=sigmadrag(56:58,:);

load('sigmadragvals9.mat','sigmadrag','nA','nP','T');
sigmadragtemp(59:61,:)=sigmadrag(59:61,:);

sigmadrag=sigmadragtemp;
clear sigmadragtemp;

for j=1:length(nA)
    for k=2:length(nA)
        sigmadrag(j,k)=sigmadrag(k,j);
    end
end

save('sigmadragvalscombined.mat')

end