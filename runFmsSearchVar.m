 Here is an example of one function type with var II on development time
% Inorder to get all functions, the function can be changed

% This is the set up for the initial values
s = RandStream('mt19937ar','Seed',0, 'NormalTransform', 'Ziggurat');
RandStream.setGlobalStream(s)

samp = 50;
Parm = lhsdesign(5,samp);


% % Order is  mean, st, 8a , 8b, 5

% This is my lower and upper bounds, gamma mean, stand dev, para a or b and
% the survival
lb = [  5, 0.5, log10(0.0001), log10(0.0001),  0.7 ]';
ub = [ 26, 30, log10(1000), log10(10),  1  ]';

Parm200 = bsxfun(@plus, lb, bsxfun(@times, Parm, (ub-lb)));

Parm200(3,:) = 10.^(Parm200(3,:));
Parm200(4,:) = 10.^(Parm200(4,:));
% each initial set is labeled for function type, the next one is for
% function 2a
Parmf2a = Parm200;

Parmf2a(3,:) = -1.*Parmf2a(3,:);
Parmf1c = Parm200([1,2, 4, 5],:);
Parmf2c = Parm200;
Parmf2c(4,:) = -1.*(Parmf2c(4,:));
Parmf1b = Parm200([1,2, 4, 5],:);
Parmf1b(3,:) = -1.*(Parmf1b(3,:));
Parmf2b = Parm200;

Parmf2d = Parm200;
Parmf2d(3,:) = Parmf2d(3,:)./10;

Parmf1a = Parm200([1,2, 3, 5],:);

Parmf1a(3,:) = -1.*(Parmf1a(3,:));
options = optimset('Display','off');
ll2 = 9;
% this is initializing for one function with all histories and 50 samples
% each
parf2bfms = zeros(19.*samp, ll2);

% this is for the history options
d = [1, 2:2:36];
%
par8K = zeros(50, 7);
samp =50;
 tic
for j = 1:19
    da = d(j);
    fne = @(x)f2b(x,da);
for i = 1:samp
    
parm0 = Parmf2b(:, i);

   
     




[b,a , c]  = fminsearch(fne,parm0, options);
par8K(i, :) = [8,da, a, b', c];



end
    
parf2bfms(50*(j-1) +1: 50*j,:) = par8K;
end


toc
%% This is an example with Var III on development time

% this is initializing for one function with all histories and 50 samples
% each
parf2bfms3 = zeros(19.*samp, 7);

% this is for the history options
d = [1, 2:2:36];

par8K = zeros(50, 7);
samp =50;
 tic
for j = 1:19
    da = d(j);
    % run through a different function
    fne = @(x)f2b3(x,da);
for i = 1:samp
    
    % there is less inputs
parm0 = Parmf2b(3:5, i);

   
     




[b,a , c]  = fminsearch(fne,parm0, options);
par8K(i, :) = [8,da, a, b', c];



end
    
parf2bfms3(50*(j-1) +1: 50*j,:) = par8K;
end
toc
%% This is an example on survival var II


% this is initializing for one function with all histories and 50 samples
% each
parf2bfmsS = zeros(19.*samp, 8);


par8K = zeros(50, 7);
samp =50;
 tic
for j = 1:19
    da = d(j);
    % run through a different function
    fne = @(x)f2bS(x,da);
for i = 1:samp
    
    % we do not need survival constant
parm0 = Parmf2b(1:4, i);

   
     




[b,a , c]  = fminsearch(fne,parm0, options);
par8K(i, :) = [8,da, a, b', c];



end
    
parf2bfmsS(50*(j-1) +1: 50*j,:) = par8K;
end
toc


%% This is an example on survival var III


% this is initializing for one function with all histories and 50 samples
% each
parf2bfmsS3 = zeros(19.*samp, ll2);


par8K = zeros(50, 7);
samp =50;
 tic
for j = 1:19
    da = d(j);
    % run through a different function
    fne = @(x)f2bS3(x,da);
for i = 1:samp
    
    % no gamma
parm0 = Parmf2b(3:5, i);

   
     




[b,a , c]  = fminsearch(fne,parm0, options);
par8K(i, :) = [8,da, a, b', c];



end
    
parf2bfmsS3(50*(j-1) +1: 50*j,:) = par8K;
end
toc