function [probability_i] = SoftMax(a)
    maximum = max(a);
    a = a - maximum;
    probability_i = exp(a)/sum(exp(a));
end