function gengrid

load('sigmadragvalscombined.mat')
% sigmadragvalscombined contains 
% drag conductivity in units of e^2/hbar.
% nA and nP in units of 10^10 cm^-2.
% T in units of K.

nA=[-fliplr(nA(2:61)) nA];
nP=nA;

% This strange arrangement is correct, because row indices of a matrix
% always increase in the downward direction, whereas y coordinates always
% increase in the upward direction. Hence, we must do the strange thing of
% making the y coordinate (mutildeP in this case) increase in the downward
% direction in the drag matrix.
lower=[-fliplr(sigmadrag(:,2:61)) sigmadrag];

upper=-flipud( lower(2:61,:) );

sigmaDgrid=[upper; lower];

% figure;surf(mutildeA,mutildeP,sigmaDgrid);
figure;surf(nA,nP,sigmaDgrid);

save(['draggrid-T' num2str(T) '.mat'],'sigmaDgrid','nA','nP','T')

end