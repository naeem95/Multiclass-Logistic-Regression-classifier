load Data\mnist_uint8.mat
train_x=double(train_x);
train_y=double(train_y);
test_x=double(test_x);
test_y=double(test_y);

%train
w=train_lr(train_x,train_y);
%test
acc_lr=test_lr(w,test_x,test_y);
disp(acc_lr);
save acc_lr acc_lr