function [accuracy]=test_lr(w,testX,testt)
x_size=size(testX,1);
y=ones(x_size,1);
biasd_test_points=[testX y];

count = 0;    
    for i = 1:x_size
        a = biasd_test_points(i,:) * w;
        y = SoftMax(a);
        [~,class] = max(y);
        classification(i) = class;
    end
    
    for i =1:x_size
        testpoint = testt(i,:);
        [~,tclass] = max(testpoint);
        if(tclass == classification(i))
            count = count+1;
        end
    end
    accuracy = (count/x_size)*100;
end