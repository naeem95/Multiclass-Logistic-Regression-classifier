function [w]=train_lr(X,t)
w_size=size(X,2)+1;
w=zeros(w_size,size(t,2)); 
N=size(X,1);
y=ones(N,1);
bisedinput=[X y];
Divergence_Criteria = 10^-5;

while 1 == 1
    for i=1:N
    y=SoftMax(bisedinput(i,:)*w);

    wold = w;
    w = w - 0.070 * (((bisedinput(i,:))'*(y-t(i,:))));
    end
        if sumsqr(w - wold) <= Divergence_Criteria, break; end %For Divengence
end

end