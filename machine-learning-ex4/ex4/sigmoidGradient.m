function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).


% original sigmoid function from sigmoid.m g = 1.0 ./ (1.0 + exp(-z));
% We can either leverage the function we defined there like so:

g = sigmoid(z) .* (1 - sigmoid(z));

% Or we can recycle that code directly in this function for a slightly more verbose implementation.
% gGrad = (1.0 ./ (1.0 + exp(-z)) .* (1 - (1.0 ./ (1.0 + exp(-z)))))
% Since we already have sigmoid defined there's no real reason to use the line above.










% =============================================================




end
