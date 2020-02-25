% Now for fig 4

% first we must get individual runs here, but the function collapses everything, so  
% I write it all

% I used the violin plots from file exchange on matlab, so to run the
% following is necessary
% https://www.mathworks.com/matlabcentral/fileexchange/23661-violin-plots-for-plotting-multiple-distributions-distributionplot-m

% single run for func 2b var 2
parm = [3.1145    9.0943    0.0043    1.6162    0.9665];
d = 1;


for iii = 1
    
   
% Here I am relabeling parameters fed in
par =  parm(3:4);

% must be positive so that there are no imaginary
if par(1) < 0.00000001
   par(1) =  0.00000001;
end



g1 = parm(1);
g2 = parm(2);
if g1 < 1;
g1 = 1;
elseif g1 > 35
    g1 = 35;
end

if g2 < 0.5
   g2 = 0.5; 
elseif g2 > 100
    g2 =100;
end

% Shape is mean/scale ,   Scale = var/mean
thet =g2/g1; % Scale 
nu = g1/thet; % shape'


% This is the function with density
ff2  = @(den,a,b) (1+(a.*den).^b).^(-1); % func 5

% This is the time length from the experiemnet
t = 195;

% Here is the differenc in days for hatching as larvae did not hatch every
% day
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% Day each larvae hatched
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

  

% This is the proportion which survive
if parm(5) < 0.1
    parm(5)=0.1;
elseif parm(5) >0.99
    parm(5)=0.99;
end

sk2 = parm(5);

% Now we assume that without density dependence pupation is a gamma
% distribution


x = 0:60;
yy = gamcdf(x,nu, thet);

% Now since each cohort is born on a different day I just made a matrix
% starting the gamma distribution four days after birth in order that
% pupation does not begin until after day 5
yy2 = zeros(53, 191);
yy2(1, 1:61) = yy;
k1 = 1;
k2 = 61;
for j =2:54
    k = Lhatchdif(j-1);
yy2(j, (k1 +k):(k+ k2)) = yy;
k1 = k + k1;
k2 = k + k2;
end
yy2 = [zeros(54,3) yy2];

% Now I am setting up for the simulation

% this is the number of cohorts
 n = 54;

 % This is for pupation from (cohort, day)
 y = zeros(n, t-16);
 
 cohort = zeros(n,t-16);
 den2 = zeros(n,t-18+d);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;
  den2(1:(k-1),j-18+d) = ones(k-1,1).*sum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
     

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
          
           % This finds the last place that there is a cohort
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
         % This averages just days alive         
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
      
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2 - y(1:n,j-17));
       
       end
   end
   end
   
  
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*sum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
     
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
 
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
 
  
      dtype = ones(d,1)./d; 
      
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2 - y(1:n,j-17));
  end
    

 
end

 run82 = y;
 coh82 = cohort;


% single run for func2b var 3
parm = [  0.0064    1.4526    0.9638  ];
d = 1;


for iiii=1;
    
   
% Here I am relabeling parameters fed in
par =  parm(1:2);

% must be positive so that there are no imaginary
if par(1) < 0.00000001
   par(1) =  0.00000001;
end






% This is the function with density
ff2  = @(den,a,b) (1+(a.*den).^b).^(-1); % func 5

% This is the time length from the experiemnet
t = 195;

% Here is the differenc in days for hatching as larvae did not hatch every
% day
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% Day each larvae hatched
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

  

% This is the proportion which survive
if parm(3) < 0.1
    parm(3)=0.1;
elseif parm(3) >0.99
    parm(3)=0.99;
end

sk2 = parm(3);

% Now we assume that without density dependence pupation is a gamma
% distribution
yy = ones(1,61);

% Now since each cohort is born on a different day I just made a matrix
% starting the gamma distribution four days after birth in order that
% pupation does not begin until after day 5
yy2 = zeros(53, 191);
yy2(1, 1:61) = yy;
k1 = 1;
k2 = 61;
for j =2:54
    k = Lhatchdif(j-1);
yy2(j, (k1 +k):(k+ k2)) = yy;
k1 = k + k1;
k2 = k + k2;
end
yy2 = [zeros(54,4) yy2];

% Now I am setting up for the simulation

% this is the number of cohorts
 n = 54;

 % This is for pupation from (cohort, day)
 y = zeros(n, t-16);
 
 cohort = zeros(n,t-16);
 den2 = zeros(n,t-18+d);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;
  den2(1:(k-1),j-18+d) = ones(k-1,1).*sum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
     

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
          
           % This finds the last place that there is a cohort
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
         % This averages just days alive         
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
      
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2 - y(1:n,j-17));
       
       end
   end
   end
   
  
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*sum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
     
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
 
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
 
  
      dtype = ones(d,1)./d; 
      
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2 - y(1:n,j-17));
  end
    

end


 run84 = y;
 coh84 = cohort;
 
 % single run for only gamma
parm = [  8.9334    8.1030    0.8057   ];


for iii=1
    
g1 = parm(1);
g2 = parm(2);
if g1 < 1;
g1 = 1;
elseif g1 > 35
    g1 = 35;
end

if g2 < 0.5
   g2 = 0.5; 
end

% Shape is mean/scale ,   Scale = var/mean
thet = g2/g1; % Scale 
nu = g1/thet; % shape'



%ff2 =  1; % no density
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
%Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';


if parm(3) < 0.1
    parm(3)=0.1;
elseif parm(3) >0.99
    parm(3)=0.99;
end
sk2 = [1; parm(3).*ones(179,1)];





pd = makedist('Gamma',nu, thet);
%pd = makedist('Exponential',mu); 
x = 0:60;
yy = cdf(pd,x);

% Now since each cohort is born on a different day I just made a matrix
% starting the gamma distribution four days after birth in order that
% pupation does not begin until after day 5
yy2 = zeros(53, 191);
yy2(1, 1:61) = yy;
k1 = 1;
k2 = 61;
for j =2:54
    k = Lhatchdif(j-1);
yy2(j, (k1 +k):(k+ k2)) = yy;
k1 = k + k1;
k2 = k + k2;
end
yy2 = [zeros(54,3) yy2];

% Now I am setting up for the simulation

 n = 54;

 y = zeros(n, t-16);
 
 cohort = zeros(n,t-16);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     
   
   

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;

  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
       end
   end  
   
  end
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  
     
     
    

 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16)) - y(1:n,j-17);
   
  end
end



 run = y;
 coh = cohort;
 
  %This is for fun 8 Var 2 survival

parm = [ 35, 316.9023    0.00011    1.3547] ;
d=1;

for itt =1
    
% Here I am relabeling parameters fed in
par =  parm(3:4);

% must be positive so that there are no imaginary
if par(1) < 0.00000001
   par(1) =  0.00000001;
end



g1 = parm(1);
g2 = parm(2);
if g1 < 1;
g1 = 1;
elseif g1 > 35
    g1 = 35;
end

if g2 < 0.5
   g2 = 0.5; 
end

% Shape is mean/scale ,   Scale = var/mean
thet =g2/g1; % Scale 
nu = g1/thet; % shape'


% This is the function with density
ff2  = @(den,a,b) (1+(a.*den).^b).^(-1); % func 5

% This is the time length from the experiemnet
t = 195;

% Here is the differenc in days for hatching as larvae did not hatch every
% day
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% Day each larvae hatched
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

  

% % This is the proportion which survive
% if parm(5) < 0.1
%     parm(5)=0.1;
% elseif parm(5) >0.99
%     parm(5)=0.99;
% end

%sk2 = parm(5);
sk2 = 1;
% Now we assume that without density dependence pupation is a gamma
% distribution


x = 0:60;
yy = gamcdf(x,nu, thet);

% Now since each cohort is born on a different day I just made a matrix
% starting the gamma distribution four days after birth in order that
% pupation does not begin until after day 5
yy2 = zeros(53, 191);
yy2(1, 1:61) = yy;
k1 = 1;
k2 = 61;
for j =2:54
    k = Lhatchdif(j-1);
yy2(j, (k1 +k):(k+ k2)) = yy;
k1 = k + k1;
k2 = k + k2;
end
yy2 = [zeros(54,3) yy2];

% Now I am setting up for the simulation

% this is the number of cohorts
 n = 54;

 % This is for pupation from (cohort, day)
 y = zeros(n, t-16);
 
 cohort = zeros(n,t-16);
 den2 = zeros(n,t-18+d);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;
  den2(1:(k-1),j-18+d) = ones(k-1,1).*sum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
     

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
          
           % This finds the last place that there is a cohort
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
         % This averages just days alive         
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
      
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*sk2 - y(1:n,j-17));
       
       end
   end
   end
   
  
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*sum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
     
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
 
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
 
  
      dtype = ones(d,1)./d; 
      
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2); 
   
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*sk2 - y(1:n,j-17));
  end
    

% Then I am just making sure the output starts on day 24 and ending on day
% t
% This finds the total pupating each day

    
end

run82s = y;
coh82s = cohort;
%

%This is for fun 8 Var 4 survival

parm = [ 0.00027    6.1451    0.0180] ;
d=1;

for itt = 1;
  
% Here I am relabeling parameters fed in
par =  parm(1:2);

% must be positive so that there are no imaginary
if par(1) < 0.00000001
   par(1) =  0.00000001;
end






% This is the function with density
ff2  = @(den,a,b) (1+(a.*den).^b).^(-1); % func 5

% This is the time length from the experiemnet
t = 195;

% Here is the differenc in days for hatching as larvae did not hatch every
% day
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% Day each larvae hatched
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

  

% This is the proportion which survive
if parm(3) < 0.01
    parm(3)=0.01;
elseif parm(3) >0.99
    parm(3)=0.99;
end

%sk2 = parm(3);
sk2 = 1;
% Now we assume that without density dependence pupation is a gamma
% distribution
yy = parm(3).*ones(1,61);

% Now since each cohort is born on a different day I just made a matrix
% starting the gamma distribution four days after birth in order that
% pupation does not begin until after day 5
yy2 = zeros(53, 191);
yy2(1, 1:61) = yy;
k1 = 1;
k2 = 61;
for j =2:54
    k = Lhatchdif(j-1);
yy2(j, (k1 +k):(k+ k2)) = yy;
k1 = k + k1;
k2 = k + k2;
end
yy2 = [zeros(54,4) yy2];

% Now I am setting up for the simulation

% this is the number of cohorts
 n = 54;

 % This is for pupation from (cohort, day)
 y = zeros(n, t-16);
 
 cohort = zeros(n,t-16);
 den2 = zeros(n,t-18+d);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;
  den2(1:(k-1),j-18+d) = ones(k-1,1).*sum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
     

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
          
           % This finds the last place that there is a cohort
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
         % This averages just days alive         
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
      
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1), par(2)).*sk2 - y(1:n,j-17));
       
       end
   end
   end
   
  
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*sum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
     
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
 
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
 
  
      dtype = ones(d,1)./d; 
      
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1), par(2)).*sk2 - y(1:n,j-17));
  end
    
 
end

run84s = y;
coh84s = cohort;

% this is to find the day of pupation


% now to write all pupation days for eachcohort
%

pupnoshf = zeros(54, 179);
s = zeros(54,1);
for i = 1:54
   tot =  sum(run(i,:));
   
   s(i) = find(run(i,:),1);
  d = (s(i)+17)-Lhatchday(i);
    pupnoshf(i, d:(end-s(i)+d)) = run(i,s(i):end);
end

%s = s+ 17;
%s = s- Lhatchday;
%
pup4shf = zeros(54, 179);

for i = 1:54
   tot =  sum(run84(i,:));
   
   s = find(run84(i,:),1);
   
    pup4shf(i, 1:(end-s+1)) = run84(i,s:end);
end
pup2shf = zeros(54, 179);

for i = 1:54
   tot =  sum(run82(i,:));
   
   s = find(run82(i,:),1);
   
    pup2shf(i, 1:(end-s+1)) = run82(i,s:end);
end




pup4shfs = zeros(54, 179);

for i = 1:54
   tot =  sum(run84s(i,:));
   
   s = find(run84s(i,:),1);
   
    pup4shfs(i, 1:(end-s+1)) = run84s(i,s:end);
end
pup2shfs = zeros(54, 179);

for i = 1:54
   tot =  sum(run82s(i,:));
   
   s = find(run82s(i,:),1);
   
    pup2shfs(i, 1:(end-s+1)) = run82s(i,s:end);
end



%
pupnoshf3 = NaN(54, 108);

for j = 1:54
n = 0;
y = pupnoshf(j,:);
for i = 1:19
    
  pupnoshf3(j,(n+1):(pupnoshf(j,i)+n )) = i.*ones(1,pupnoshf(j,i));
  n = n + pupnoshf(j,i);
end
end
    
%


%
pup2shf3 = NaN(54, 276);

for j = 1:54
n = 0;
y = pup2shf(j,:);
for i = 1:60
    
  pup2shf3(j,(n+1):(pup2shf(j,i)+n )) = (4+i).*ones(1,pup2shf(j,i));
  n = n + pup2shf(j,i);
end
end
    

pup2shf3s = NaN(54, 276);

for j = 1:54
n = 0;
y = pup2shfs(j,:);
for i = 1:60
    
  pup2shf3s(j,(n+1):(pup2shfs(j,i)+n )) = (4+i).*ones(1,pup2shfs(j,i));
  n = n + pup2shfs(j,i);
end
end


pup4shf3 = NaN(54, 306);

for j = 1:54
n = 0;
y = pup4shf(j,:);
for i = 1:129
    
  pup4shf3(j,(n+1):(pup4shf(j,i)+n )) = (4+i).*ones(1,pup4shf(j,i));
  n = n + pup4shf(j,i);
end
end

%
pup4shf3s = NaN(54, 306);

for j = 1:54
n = 0;
y = pup4shfs(j,:);
for i = 1:129
    
  pup4shf3s(j,(n+1):(pup4shfs(j,i)+n )) = (4+i).*ones(1,pup4shfs(j,i));
  n = n + pup4shfs(j,i);
end
end


%
hno= figure;
plot(1,12, '+r', 'MarkerSize',12)
hold on
plot(2,12, 'sg', 'MarkerSize',12)
hold on
distributionPlot(pupnoshf3', 'color', [ .3, .3 .3 ])
ylabel('Development Time')
%xlabel('Cohort Number')
set(gca,'FontSize', 24)

axno = gca;

set(axno,'XTick',-1,'XTickLabel', 1)
%set(axno,'YTick', 20:20:60,'YTickLabel', 20:20:60)
set(axno, 'Position', [ 0.1, 0.13, 0.85, 0.85])
set(hno,'Position',[50, 100, 1700, 500])
legend('Mean', 'Median')
axis([0,55,0,100])
%
h2 = figure;

distributionPlot(pup2shf3', 'color', [.3, .3 .3 ])
ylabel('Development Time')
%xlabel('Cohort Number')
set(gca,'FontSize', 24)
ax2 = gca;

set(ax2,'XTick',-1,'XTickLabel', 1)
%set(axno,'YTick', 20:20:60,'YTickLabel', 20:20:60)
set(ax2, 'Position', [ 0.1, 0.13, 0.85, 0.85])
set(h2,'Position',[50, 100, 1700, 500])
axis([0,55,0,100])

h4 = figure;

distributionPlot(pup4shf3', 'color', [ .3, .3 .3 ])
ylabel('Development Time')
xlabel('Cohort Number')
set(gca,'FontSize', 24)

ax4 = gca;

set(ax4,'XTick',5:5:50,'XTickLabel', 5:5:50)
%set(axno,'YTick', 20:20:60,'YTickLabel', 20:20:60)
set(ax4, 'Position', [ 0.1, 0.13, 0.85, 0.85])
set(h4,'Position',[50, 100, 1700, 500])
axis([0,55,0,100])

% survival var 2

h2 = figure;

distributionPlot(pup2shf3s', 'color', [.3, .3 .3 ])
ylabel('Development Time')
%xlabel('Cohort Number')
set(gca,'FontSize', 24)
ax2 = gca;

set(ax2,'XTick',-1,'XTickLabel', 1)
%set(axno,'YTick', 20:20:60,'YTickLabel', 20:20:60)
set(ax2, 'Position', [ 0.1, 0.13, 0.85, 0.85])
set(h2,'Position',[50, 100, 1700, 500])
axis([0,55,0,100])

% survival var 3
h4 = figure;

distributionPlot(pup4shf3s', 'color', [ .3, .3 .3 ])
ylabel('Development Time')


xlabel('Cohort Number')
set(gca,'FontSize', 24)

ax4 = gca;

set(ax4,'XTick',5:5:50,'XTickLabel', 5:5:50)
%set(axno,'YTick', 20:20:60,'YTickLabel', 20:20:60)
set(ax4, 'Position', [ 0.1, 0.13, 0.85, 0.85])
set(h4,'Position',[50, 100, 1700, 500])
axis([0,55,0,100])
