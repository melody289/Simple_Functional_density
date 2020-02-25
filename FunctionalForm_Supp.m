% SUpplemental Figure

% Supp Fig 1
Lhatch = [ 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';

figure
plot(t, Lhatch, '-d', 'LineWidth', 2.1, 'MarkerSize', 14, 'MarkerFace', '[0    0.4470    0.7410')
xlabel('Days')
ylabel('Number in New Cohort')
set(gca, 'FontSize', 25)

set(gca, 'Position', [ 0.17, 0.17, 0.75, 0.75])% [ 0.14, 0.005, 0.85, 0.7]
set(gcf,'Position',[10, 400, 800, 500])

%
ydata = [4	30	72	55	61	21	16	13	38	21	16	12	36	46	27	35	28	15	36	30	25	15	16	17	7	21	15	34	44	52	69	35	23	36	31	11	21	28	17	41	23	41	27	37	28	9	19	22	36	24	50	48	13	10	18	35	23	34	31	9	17	22	31	23	25	48	14	13	22	18	28	26	25	19	12	20	29	22	35	25	16	7	25	12	25	24	35	18	18	24	9	7	19	24	10	12	12	23	8	7	18	8	5	18	27	25	26	14	19	8	8	6	8	8	14	22	19	33	30	30	32	35	23	8	23	19	26	43	37	38	23	38	48	25	35	38	33	27	57	48	68	65	49	41	41	39	43	20	27	29	38	31	41	38	38	54	35	42	26	9	7	2	7	3	1	1	0	1	0	0	0	0 ]';

figure
plot(7:178, ydata,'-o', 'LineWidth', 2.1,'Color', '[0.4660    0.6740    0.1880]','MarkerSize', 10, 'MarkerFace','[0.4660    0.6740    0.1880]')
xlabel('Days')
ylabel('Pupate')
set(gca, 'FontSize', 25)
set(gca, 'Position', [ 0.17, 0.17, 0.75, 0.75])% [ 0.14, 0.005, 0.85, 0.7]
set(gcf,'Position',[10, 400, 800, 500])

%%


load('FunctionRuns.mat')
 %here is for fig S2, using data run


m54 = zeros(19,1);
m64 = zeros(19,1);
m74 = zeros(19,1);
m84 = zeros(19,1);
m94 = zeros(19,1);
m34 = zeros(19,1);
m44 = zeros(19,1);



for i = 1:19
m54(i) = min(par5fms4((50*(i-1) + 1):50*i,3));

m64(i) = min(par6fms4((50*(i-1) + 1):50*i,3));

m74(i)= min(par7fms4((50*(i-1) + 1):50*i,3));

m84(i) = min(par8fms4((50*(i-1) + 1):50*i,3));

m94(i) = min(par9fms4((50*(i-1) + 1):50*i,3));

m44(i) = min(par4fms4((50*(i-1) + 1):50*i,3));

m34(i) = min(par3fms4((50*(i-1) + 1):50*i,3));


end

m5 = zeros(19,1);
m6 = zeros(19,1);
m7 = zeros(19,1);
m8 = zeros(19,1);
m9 = zeros(19,1);
m3 = zeros(19,1);
m4 = zeros(19,1);



for i = 1:19
m5(i) = min(par5fms2rd((50*(i-1) + 1):50*i,3));

m6(i)= min(par6fms2rd((50*(i-1) + 1):50*i,3));

m7(i) = min(par7fms2rd((50*(i-1) + 1):50*i,3));

m8(i) = min(par8fms2rd((50*(i-1) + 1):50*i,3));

m9(i) = min(par9fmsr((50*(i-1) + 1):50*i,3));

m4(i) = min(par4fms2rd((50*(i-1) + 1):50*i,3));

m3(i) = min(par3fms2rd((50*(i-1) + 1):50*i,3));

end


m5s = zeros(19,1);
m6s = zeros(19,1);
m7s = zeros(19,1);
m8s = zeros(19,1);
m9s = zeros(19,1);
m3s = zeros(19,1);
m4s = zeros(19,1);



for i = 1:19
m5s(i)= min(par5fmsSr1((50*(i-1) + 1):50*i,3));

m6s(i) = min(par6fmsSr1((50*(i-1) + 1):50*i,3));

m7s(i) = min(par7fmsSr1((50*(i-1) + 1):50*i,3));

m8s(i) = min(par8fmsSr1((50*(i-1) + 1):50*i,3));

m9s(i) = min(par9fmsSr1((50*(i-1) + 1):50*i,3));

m4s(i)= min(par4fmsSr1((50*(i-1) + 1):50*i,3));

m3s(i) = min(par3fmsSr1((50*(i-1) + 1):50*i,3));


end


m5s4 = zeros(19,1);
m6s4 = zeros(19,1);
m7s4 = zeros(19,1);
m8s4 = zeros(19,1);
m9s4 = zeros(19,1);
m3s4 = zeros(19,1);
m4s4 = zeros(19,1);

s54 = zeros(19,1);
s44 = zeros(19,1);

for i = 1:19
m5s4(i) = min(par5fmsS4r((50*(i-1) + 1):50*i,3));

m6s4(i) = min(par6fmsS4r((50*(i-1) + 1):50*i,3));

m7s4(i) = min(par7fmsS4r((50*(i-1) + 1):50*i,3));

m8s4(i) = min(par8fmsS4r((50*(i-1) + 1):50*i,3));

m9s4(i) = min(par9fmsS4r((50*(i-1) + 1):50*i,3));

m4s4(i) = min(par4fmsS4r((50*(i-1) + 1):50*i,3));

m3s4(i) = min(par3fmsS4r((50*(i-1) + 1):50*i,3));


end



%
%figure
c = char({'1a','1b','1c','2a','2b','2c','2d','1a','1b','1c','2a','2b','2c','2d', 'None', 'Hancock'});

day1 = [ m5(1), m4(1), m6(1), m3(1), m8(1), m7(1), m9(1), m54(1), m44(1), m64(1), m34(1), m84(1), m74(1), m94(1), 290.05, 132.5]; %6.6462, aich];
%figure
bar(day1([1:end]),0.25 ,'FaceColor',[0    0.4470    0.7410],'EdgeColor',[0 .9 .9]) %'FaceColor',[ 0    0.4470    0.7410],'EdgeColor',[0 .9 .9]
hold on
%
bp = [par5fmsr(1:50,3),par4fmsr(1:50,3), par6fmsr(1:50,3), par3fmsr(1:50,3), par8fmsr(1:50,3), par7fmsr(1:50,3),par9fmsr(1:50,3), par5fms4r(1:50,3), par4fms4r(1:50,3), par6fms4r(1:50,3), par3fms4r(1:50,3), par8fms4r(1:50,3), par7fms4r(1:50,3), par9fms4r(1:50,3), parfmsgr(:,3), 132.5.*ones(50,1) ];
bp = [bp; par5fms2rd(1:50,3),par4fms2rd(1:50,3), par6fms2rd(1:50,3), par3fms2rd(1:50,3), par8fms2rd(1:50,3), par7fms2rd(1:50,3),par9fms2rd(1:50,3), par5fms4rd(1:50,3), par4fms4rd(1:50,3), par6fms4rd(1:50,3), par3fms4rd(1:50,3), par8fms4rd(1:50,3), par7fms4rd(1:50,3), par9fms4rd(1:50,3), parfmsgr(:,3), 132.5.*ones(50,1) ];

%boxplot(bp(:, 1:end), 'Whisker',10000000000 )
boxplot(bp(:, 1:end),'Colors', [0    0.4470    0.7410], 'Widths',0.25, 'Whisker',10000000000 )

%
ylabel('Root Mean Squared Error', 'FontSize', 20)
set(gca,'XTick',[1.06:16, 16 ],'XTickLabel', c)
%set(gca,'YTick',[0],'YTickLabel', '1')
axis([ 0.7, 16.5  130, 320])
set(gca,'FontSize', 20)


%figure
c = char({'1a','1b','1c','2a','2b','2c','2d','1a','1b','1c','2a','2b','2c','2d', 'None', 'Hancock'});

day1 = [ m5s(1), m4s(1), m6s(1), m3s(1), m8s(1), m7s(1), m9s(1), m5s4(1), m4s4(1), m6s4(1), m3s4(1), m8s4(1), m7s4(1), m9s4(1), 290.05, 132.5]; %6.6462, aich];
%figure
bar(1.3:16.3, day1([1:end]),0.25, 'FaceColor','y','EdgeColor',[0.9290    0.6940    0.1250]) %  'FaceAlpha',.5) %[ 0.9290    0.6940    0.1250]
hold on
%
bp = [par5fmsSr1(1:50,3),par4fmsSr1(1:50,3), par6fmsSr1(1:50,3), par3fmsSr1(1:50,3), par8fmsSr1(1:50,3), par7fmsSr1(1:50,3),par9fmsSr1(1:50,3), par5fmsS4r(1:50,3), par4fmsS4r(1:50,3), par6fmsS4r(1:50,3), par3fmsS4r(1:50,3), par8fmsS4r(1:50,3), par7fmsS4r(1:50,3), par9fmsS4r(1:50,3), parfmsgr(:,3), 132.5.*ones(50,1) ];
%bp = [bp; par5fms2rd(1:50,3),par4fms2rd(1:50,3), par6fms2rd(1:50,3), par3fms2rd(1:50,3), par8fms2rd(1:50,3), par7fms2rd(1:50,3),par9fms2rd(1:50,3), par5fms4rd(1:50,3), par4fms4rd(1:50,3), par6fms4rd(1:50,3), par3fms4rd(1:50,3), par8fms4rd(1:50,3), par7fms4rd(1:50,3), par9fms4rd(1:50,3), parfmsgr(:,3), 132.5.*ones(50,1) ];

boxplot(bp(:, 1:end), 'Positions', 1.3:16.3,'Colors', [0.9290    0.6940    0.1250], 'Widths',0.25, 'Whisker',10000000000 )


%ylabel('(Mean Squared Error)^{1/2}', 'FontSize', 20)
set(gca,'XTick',[1.37:16 16.],'XTickLabel', c)
set(gca,'YTick',[0],'YTickLabel', '1')
axis([ 0.6, 16.5, 130, 400])
set(gca,'FontSize', 20)

%% Figure S3
ydata = [0 0 0 0 0 0 4	30	72	55	61	21	16	13	38	21	16	12	36	46	27	35	28	15	36	30	25	15	16	17	7	21	15	34	44	52	69	35	23	36	31	11	21	28	17	41	23	41	27	37	28	9	19	22	36	24	50	48	13	10	18	35	23	34	31	9	17	22	31	23	25	48	14	13	22	18	28	26	25	19	12	20	29	22	35	25	16	7	25	12	25	24	35	18	18	24	9	7	19	24	10	12	12	23	8	7	18	8	5	18	27	25	26	14	19	8	8	6	8	8	14	22	19	33	30	30	32	35	23	8	23	19	26	43	37	38	23	38	48	25	35	38	33	27	57	48	68	65	49	41	41	39	43	20	27	29	38	31	41	38	38	54	35	42	26	9	7	2	7	3	1	1	0	1	0	0 0	0	0 ]';

%single run for func 6 var 2
%parm = [  20.0776, 2.2427e+03 0.0202    0.9590]; % d= 8
parm = [ 1.7263  318.2427    0.0283    0.9580];
d = 1;


for iiii=1
    
   
par =  parm(3);



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



ff2 = @(den,a) (1+a.*den).^(-1); % func 3
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 
% % This is the days which line up with the survival
% sday = [19	21	24	26	28	31	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147	150	152	154	157	159	161	164	166	168	171	173	175	178	180	182	185	187	189	192	195]';
% 
% % This is the difference between the survival days
% difday = [2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3 3]';
% 
% % Now we are finding the survival for every day, by geometric mean as in
% % Hancock 2016
% sk = zeros(177,1); 
% for k = 19:195
% place = find(sday >= k, 1 ) ;

if parm(4) < 0.1
    parm(4)=0.1;
elseif parm(4) >0.99
    parm(4)=0.99;
end
sk2 = [1; parm(4).*ones(179,1)];





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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl)));  
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      

      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
%      dtype = zeros(1,d);
%           %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      

  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
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
      
%       %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
   %  den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
   
  end
    



end


 run62 = y;
 coh62 = cohort;
 % single run for func 6 var 4
parm = [  0.0255    0.9605 ];
d = 1;


for iii=1
    
    
   

par =  parm(1);






ff2 = @(den,a) (1+a.*den).^(-1); % func 3
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 


if parm(2) < 0.1
    parm(2)=0.1;
elseif parm(2) >0.99
    parm(2)=0.99;
end
sk2 = [1; parm(2).*ones(179,1)];




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

 n = 54;

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl)));  
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      

      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
%      dtype = zeros(1,d);
%           %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      

  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
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
      
%       %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
   %  den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
   
  end
     
end




 run64 = y;
 coh64 = cohort;
 
 % single run for func 8 var 2
%parm = [   4.3879   -2.9439    0.0040    1.5978    0.9641  ];
%d = 10;
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
 
 % single run for func 8 var 4
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
%

%This is for fun 6 Var 2 survival

parm = [ 35, 329.8367    0.0001] ;
d=1;

for itt = 1
 

par =  parm(3);



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



ff2 = @(den,a) (1+a.*den).^(-1); % func 3
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 
% % This is the days which line up with the survival
% sday = [19	21	24	26	28	31	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147	150	152	154	157	159	161	164	166	168	171	173	175	178	180	182	185	187	189	192	195]';
% 
% % This is the difference between the survival days
% difday = [2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3 3]';
% 
% % Now we are finding the survival for every day, by geometric mean as in
% % Hancock 2016
% sk = zeros(177,1); 
% for k = 19:195
% place = find(sday >= k, 1 ) ;
% 
% sk(k-18) = survival(place)^(1/difday(place));
% 
% end
% 
% % Since the first cohort starts on day 17, but survival value begins on the
% % 19th day. I am just putting the first cohort, then using the amount for
% % day 19 to  estimate for day 18 
% sk2 = [1; sk(1) ; sk];


% if parm(4) < 0.1
%     parm(4)=0.1;
% elseif parm(4) >0.99
%     parm(4)=0.99;
% end
% sk2 = [1; parm(4).*ones(179,1)];

sk2 = ones(180,1);



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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl)));  
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      

      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
%      dtype = zeros(1,d);
%           %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      

  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
       
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
      
%       %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
   %  den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
   
  end
    

  
end

 run62s = y;
 coh62s = cohort;
 
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
%

%This is for fun 6 Var 4 survival

parm = [ 0.0001    0.0278] ;
d=1;

for itt = 1
    

par =  parm(1);






ff2 = @(den,a) (1+a.*den).^(-1); % func 3
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 


if parm(2) < 0.01
    parm(2)=0.01;
elseif parm(2) >0.99
    parm(2)=0.99;
end
%sk2 = [1; parm(2).*ones(179,1)];

sk2 = ones(180,1);


yy = parm(2).*ones(1,61);

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

 n = 54;

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl)));  
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      

      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
%      dtype = zeros(1,d);
%           %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      

  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
       
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
      
%       %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
   %  den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
   
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
end

run64s = y;
coh64s = cohort;
%
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
 
 %
h84 = figure;
pup = run84';
%pupno2 = [zeros(179,1), pupno2];
bar(2:180, pup, 'stacked')

colormap colorcube


ylabel('Number Pupated', 'Position' ,[-20, 39])
%xlabel('Days')
set(gca,'FontSize', 36)

axis([ 0, 180, -0.5, 50])

ax84 = gca;
axis([ 0, 180, -0.5, 65])
set(ax84, 'Position', [ 0.14, 0.005, 0.85, 0.85])
set(h84,'Position',[50, 100, 1300, 350])
set(ax84,'XTick',-1,'XTickLabel', '1')
set(ax84,'YTick', 20:20:60,'YTickLabel', 20:20:60)
%
c84 = figure;
bar(-coh84', 'stacked','b')

%colormap colorcube


ylabel('Total Larvae' ,'Position' ,[-20, -5700])

axc84 = gca;
set(axc84,'FontSize', 36)
set(axc84, 'Position', [ 0.14, 0.153, 0.85, 0.85])
set(c84,'Position',[50, 100, 1300, 350])
set(axc84,'YTick',-1e4:2000:-10,'YTickLabel', 10000:-2000:10)
set(axc84, 'XTick', 0:20:160, 'XTickLabel', 0:20:160)


h82 = figure;
pup = run82';
%pupno2 = [zeros(179,1), pupno2];
bar(2:180, pup, 'stacked')

colormap colorcube


ylabel('Number Pupated', 'Position' ,[-20, 39])
%xlabel('Days')
set(gca,'FontSize', 36)
ax82 = gca;
axis([ 0, 180, -0.5, 65])
set(ax82, 'Position', [ 0.14, 0.005, 0.85, 0.85])
set(h82,'Position',[50, 100, 1300, 350])

set(ax82,'XTick',-1,'XTickLabel', '1')
set(ax82,'YTick', 20:20:60,'YTickLabel', 20:20:60)
%
c82 = figure;
bar(-coh82', 'b','stacked')

%colormap colorcube


ylabel('Total Larvae', 'Position' ,[-20, -5700])
set(gca,'FontSize', 36)
axc82 = gca;

set(axc82, 'Position', [ 0.14, 0.153, 0.85, 0.85])
set(c82,'Position',[50, 100, 1300, 350])

set(axc82,'YTick',-1e4:2000:-10,'YTickLabel', 10000:-2000:10)
set(axc82, 'XTick', 0:20:160, 'XTickLabel', 0:20:160)
%

h84s = figure;
pup = run84s';
%pupno2 = [zeros(179,1), pupno2];
bar(2:180, pup, 'stacked')

colormap colorcube


ylabel('Number Pupated', 'Position' ,[-20, 39])
%xlabel('Days')
set(gca,'FontSize', 36)

axis([ 0, 180, -0.5, 50])
%set(gca,'FontSize', 20)
ax84s = gca;
axis([ 0, 180, -0.5, 65])
set(ax84s, 'Position', [ 0.14, 0.005, 0.85, 0.85])
set(h84s,'Position',[50, 100,  1300, 350])
set(ax84s,'XTick',-1,'XTickLabel', '1')

set(ax84s,'YTick', 20:20:60,'YTickLabel', 20:20:60)

%
c84s = figure;
bar(-coh84s', 'stacked','b')

%colormap colorcube


ylabel('Total Larvae', 'Position' ,[-20, -2100])

axc84s = gca;
set(axc84s,'FontSize', 36)
set(axc84s, 'Position', [ 0.14, 0.153, 0.85, 0.85])
set(c84s,'Position',[50, 100, 1300, 350])

set(axc84s,'YTick',-1e4:2000:-10,'YTickLabel', 10000:-2000:10)
set(axc84s,'YTick', 20:20:60,'YTickLabel', 20:20:60)
%

h82s = figure;
pup = run82s';
%pupno2 = [zeros(179,1), pupno2];
bar(2:180, pup, 'stacked')

colormap colorcube


ylabel('Number Pupated', 'Position' ,[-14, 39])
%xlabel('Days')
set(gca,'FontSize', 20)
ax82s = gca;
axis([ 0, 180, -0.5, 65])
set(ax82s, 'Position', [ 0.14, 0.005, 0.85, 0.85])
set(h82s,'Position',[50, 100, 1300, 350])

set(ax82s,'XTick',-1,'XTickLabel', '1')
set(ax82s,'YTick', 20:20:60,'YTickLabel', 20:20:60)

%
c82s = figure;
bar(-coh82s', 'b','stacked')

%colormap colorcube


ylabel('Total Larval Population', 'Position' ,[-14, -2100])
set(gca,'FontSize', 20)
axc82s = gca;

set(axc82s, 'Position', [ 0.14, 0.153, 0.85, 0.85])
set(c82s,'Position',[50, 100, 1300, 350])

set(axc82s,'YTick',-1e4:2000:-10,'YTickLabel', 10000:-2000:10)

%
hn =figure;
pup = run';
%pupno2 = [zeros(179,1), pupno2];
bar(2:180, pup, 'stacked')


colormap colorcube


ylabel('Number Pupated', 'Position' ,[-14, 39])
%xlabel('Days')
set(gca,'FontSize', 20)
axh = gca;
axis([ 0, 180, -0.5, 65])
set(axh, 'Position', [ 0.14, 0.005, 0.85, 0.85])
set(hn,'Position',[50, 100, 1300, 350])

set(axh,'XTick',-1,'XTickLabel', '1')
set(axh,'YTick', 20:20:60,'YTickLabel', 20:20:60)
%
hc = figure;
bar(-coh','b','stacked')

%colormap colorcube



ylabel('Total Larval Population', 'Position' ,[-14, -2100])
set(gca,'FontSize', 20)
axc = gca;

set(axc, 'Position', [ 0.14, 0.153, 0.85, 0.85])
set(hc,'Position',[50, 100, 1300, 350])

set(axc,'YTick',-1e4:2000:-10,'YTickLabel', 10000:-2000:10)
%% S4


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,sum(run62), '-*')
plot(1:179,sum(run64), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,sum(run62s), '-*')
plot(1:179,sum(run64s), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,sum(run82), '-*')
plot(1:179,sum(run84), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,sum(run82s), '-*')
plot(1:179,sum(run84s), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')


% This is for function 5 Var 2
d = 1;
parm = [1, 1.6222e+05, -0.5984    0.9665];

for iit = 1
   
if parm(3) < -1e-8
    par = parm(3);
else
par =   -1e-8;
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
thet = g2/g1; % Scale 
nu = g1/thet; % shape'


ff2 = @(den,a) (1+den).^a; %func 1
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
 Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

 % This is survival percent

p4 = parm(4);
if  p4< 0.1
    p4=0.1;
elseif p4 >0.99
    p4 =0.99;
end
sk2 = [1; p4.*ones(179,1)];



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
 den2 = zeros(n,t-18+d);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     
   
   

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;
  den2(1:(k-1),j-18+d) = ones(k-1,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
      %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl)));  
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      

      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
%      dtype = zeros(1,d);
%           %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl))); 
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      

  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
       end
   end   
  end
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
%       %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
   %  den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
   
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run52 = nansum(y); 
end
    
    
%
% This is for function 5 Var 4
d = 1;
parm = [-0.5866    0.9634];

for itt =1
   
if parm(1) < -1e-8
    par = parm(1);
else
par =   -1e-8;
end






ff2 = @(den,a) (1+den).^a; %func 1
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
 Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

 % This is survival percent

p4 = parm(2);
if  p4< 0.1
    p4=0.1;
elseif p4 >0.99
    p4 =0.99;
end
sk2 = [1; p4.*ones(179,1)];



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

 n = 54;

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
  den2(1:(k-1),j-18+d) = ones(k-1,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
      %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl)));  
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      

      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
%      dtype = zeros(1,d);
%           %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl))); 
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      

  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
       end
   end   
  end
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
%       %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
   %  den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
   
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run54 = nansum(y);

end

%
% This is for function 4 Var 2
d = 1;
parm = [35  337.8276   -0.0004    0.9876];

for itt = 1
   
    

par =  parm(3);



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


ff2 = @(den,a) exp(a.*den); % func 2
t = 195;


% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 
% % This is the days which line up with the survival
% sday = [19	21	24	26	28	31	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147	150	152	154	157	159	161	164	166	168	171	173	175	178	180	182	185	187	189	192	195]';
% 
% % This is the difference between the survival days
% difday = [2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3 3]';
% 
% %Now we are finding the survival for every day, by geometric mean as in
% % Hancock 2016
% sk = zeros(177,1); 
% for k = 19:195
% place = find(sday >= k, 1 ) ;
% 
% sk(k-18) = survival(place)^(1/difday(place));
% 
% end

% Since the first cohort starts on day 17, but survival value begins on the
% 19th day. I am just putting the first cohort, then using the amount for
% day 19 to  estimate for day 18 
%sk2 = [1; sk(1) ; sk];



if parm(4) < 0.1
    parm(4)=0.1;
elseif parm(4) >0.99
    parm(4)=0.99;
end

sk2 = [1; parm(4).*ones(179,1)];

% Now we assume that without density dependence pupation is a gamma
% distribution
%thetaa = .36;
%nuu = 15.85;



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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
      den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl)));  
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
        hspot2 = hspot2(end);
        den = zeros(54,1);
          for kl = 1:hspot2 
              
    % dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
 
  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d;
      
      %den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round( cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run42 = sum(y);
end

%
% This is for function 4 Var 4
d = 1;
parm = [ -0.0029    0.9408];

for itt = 1
   

par =  parm(1);






ff2 = @(den,a) exp(a.*den); % func 2
t = 195;


% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

% % This is the difference between the survival days
% difday = [2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3 3]';
% end



if parm(2) < 0.1
    parm(2)=0.1;
elseif parm(2) >0.99
    parm(2)=0.99;
end

sk2 = [1; parm(2).*ones(179,1)];




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

 n = 54;

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
      den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl)));  
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
        hspot2 = hspot2(end);
        den = zeros(54,1);
          for kl = 1:hspot2 
              
    % dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
 
  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d;
      
      %den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run44 = sum(y); 
end



figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run52), '-*')
plot(1:179,(run54), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')

figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run42), '-*')
plot(1:179,(run44), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')




%
% This is for function 3 Var 2
d = 1;
parm = [15.8761  650.5897   -0.1351    0.4081    0.9742];

for itt = 1
    

par =  parm(3:4);




g1 = parm(1);
g2 = parm(2);
if g1 < 1;
g1 = 1;
elseif g1 > 35
    g1 = 35;
end

if g2 < 0.4
   g2 = 0.4; 
% elseif g2 >100
%     g2= 100;
end

% Shape is mean/scale ,   Scale = var/mean
thet = g2/g1; % Scale 
nu = g1/thet; % shape'



ff2  = @(den,a,b) exp(a.*(den.^b)); % func 4
%ff2 = @(den,a,b) (1+exp(a+b.*den)).^(-1);
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';


% Survival constant
if parm(5) < 0.1
    parm(5)=0.1;
elseif parm(5) >0.99
    parm(5)=0.99;
end

sk2 = [1; parm(5).*ones(179,1)];




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
 den2 = zeros(n,t-18+d);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;
  den2(1:(k-1),j-18+d) = ones(k-1,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
       end
   end
   end
   
  
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
  end
    
% Then I am just making sure the output starts on day 24 and ending on day
% t
run32 = nansum(y);
end


%
% This is for function 3 Var 4
d = 1;
parm = [-0.2713    0.3417    0.9669 ];

for iit =1
   
par =  parm(1:2);






ff2  = @(den,a,b) exp(a.*(den.^b)); % func 4
%ff2 = @(den,a,b) (1+exp(a+b.*den)).^(-1);
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 
% % This is the days which line up with the survival
% sday = [19	21	24	26	28	31	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147	150	152	154	157	159	161	164	166	168	171	173	175	178	180	182	185	187	189	192	195]';
% 

% Survival constant
if parm(3) < 0.1
    parm(3)=0.1;
elseif parm(3) >0.99
    parm(3)=0.99;
end

sk2 = [1; parm(3).*ones(179,1)];




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

 n = 54;

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
  den2(1:(k-1),j-18+d) = ones(k-1,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
       end
   end
   end
   
  
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
  end
    
% Then I am just making sure the output starts on day 24 and ending on day
% t
run34 = nansum(y); 
end


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run32), '-*')
plot(1:179,(run34), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')


% This is for function 7 Var 2
d = 1;
parm = [3.0485    8.2655    0.0031   -1.7482    0.9671];


for iit = 1
    
   
% This is for the density function
par =  parm(3:4);


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


ff2 = @(den,a,b) (1+a.*den).^b; % func 6

% This is the number of days that the data happens
t = 195;

% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% % larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 
% % This is the days which line up with the survival
% sday = [19	21	24	26	28	31	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147	150	152	154	157	159	161	164	166	168	171	173	175	178	180	182	185	187	189	192	195]';
% 
% % This is the difference between the survival days
% difday = [2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3 3]';
% 
% % Now we are finding the survival for every day, by geometric mean as in
% % Hancock 2016
% sk = zeros(177,1); 
% for k = 19:195
% place = find(sday >= k, 1 ) ;
% 
% sk(k-18) = survival(place)^(1/difday(place));
% 
% end
% 
% % Since the first cohort starts on day 17, but survival value begins on the
% % 19th day. I am just putting the first cohort, then using the amount for
% % day 19 to  estimate for day 18 
% sk2 = [1; sk(1) ; sk];


if parm(5) < 0.1
    parm(5)=0.1;
elseif parm(5) >0.99
    parm(5)=0.99;
end
sk2 = [1; parm(5).*ones(179,1)];
% Now we assume that without density dependence pupation is a gamma
% distribution
%thetaa = .36;
%nuu = 15.85;




%pd = makedist('Exponential',mu); 
x = 0:60;
yy = gamcdf(x, nu, thet);

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16); 
   
   cohort(:,j-16) = cohort(:,j-17).*sk2(j-16) - y(1:n,j-17);
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run72 = sum(y); 
end


%
% This is for function 7 Var 4
d = 1;
parm = [0.0052   -1.5447    0.9634    ];

for iit = 1
   
    

% This is for the density function
par =  parm(1:2);





ff2 = @(den,a,b) (1+a.*den).^b; % func 6

% This is the number of days that the data happens
t = 195;

% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous


if parm(3) < 0.1
    parm(3)=0.1;
elseif parm(3) >0.99
    parm(3)=0.99;
end
sk2 = [1; parm(3).*ones(179,1)];



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

 n = 54;

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run74 = sum(y);
end


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run72), '-*')
plot(1:179,(run74), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')



% This is for function 9 Var 2
d = 1;
parm = [34.5290, 2.2024e+03 2.7352    0.0003    0.9781];



for iit = 1
   
 

par =  parm(3:4);


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


ff2 = @(den,a,b) 1./(exp(a+b.*den)-exp(a)+1); % func 7
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
 
% % Since the first cohort starts on day 17, but survival value begins on the
% % 19th day. I am just putting the first cohort, then using the amount for
% % day 19 to  estimate for day 18 
% sk2 = [1; sk(1) ; sk];

if parm(5) < 0.1
    parm(5)=0.1;
elseif parm(5) >0.99
    parm(5)=0.99;
end

sk2 = [1; parm(5).*ones(179,1)];




 
x = 0:60;
yy = gamcdf(x, nu, thet);

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
  end
    
% Then I am just making sure the output starts on day 24 and ending on day
% t
run92 = sum(y);   
end


%
% This is for function 9 Var 4
d = 1;
parm = [ 4.1376    0.0002    0.9664   ];


for iit = 1
   


par =  parm(1:2);



ff2 = @(den,a,b) 1./(exp(a+b.*den) - exp(a) + 1); % func 7/1d
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
 
% % Since the first cohort starts on day 17, but survival value begins on the
% % 19th day. I am just putting the first cohort, then using the amount for
% % day 19 to  estimate for day 18 
% sk2 = [1; sk(1) ; sk];

if parm(3) < 0.1
    parm(3)=0.1;
elseif parm(3) >0.99
    parm(3)=0.99;
end

sk2 = [1; parm(3).*ones(179,1)];




 
%x = 0:65;
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

 n = 54;

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
  end
    
% Then I am just making sure the output starts on day 24 and ending on day
% t
run94 = sum(y); 
end


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run92), '-*')
plot(1:179,(run94), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')



% This is for fun 3 Var 2 survival

parm = [ 35, 313.2431, -6.5293e-06, 1.2914] ;
d=1;

for tti = 1;
    
par =  parm(3:4);




g1 = parm(1);
g2 = parm(2);
if g1 < 1;
g1 = 1;
elseif g1 > 35
    g1 = 35;
end

if g2 < 0.4
   g2 = 0.4; 
% elseif g2 >100
%     g2= 100;
end

% Shape is mean/scale ,   Scale = var/mean
thet = g2/g1; % Scale 
nu = g1/thet; % shape'



ff2  = @(den,a,b) exp(a.*(den.^b)); % func 4
%ff2 = @(den,a,b) (1+exp(a+b.*den)).^(-1);
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';


% Survival constant
% if parm(5) < 0.1
%     parm(5)=0.1;
% elseif parm(5) >0.99
%     parm(5)=0.99;
% end
% 
% sk2 = [1; parm(5).*ones(179,1)];

sk2 =ones(180,1);


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
 den2 = zeros(n,t-18+d);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;
  den2(1:(k-1),j-18+d) = ones(k-1,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
       
       end
   end
   end
   
  
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16); 
   
   cohort(:,j-16) = cohort(1:n,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17);
  end
    
% Then I am just making sure the output starts on day 24 and ending on day
% t
run32s = nansum(y);
end

% This is for fun 4 Var 2 survival

parm = [ 35   329.2119   -0.0001 ] ;
d=1;


for itt = 1;
   

par =  parm(3);



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


ff2 = @(den,a) exp(a.*den); % func 2
t = 195;


% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 
% % This is the days which line up with the survival
% sday = [19	21	24	26	28	31	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147	150	152	154	157	159	161	164	166	168	171	173	175	178	180	182	185	187	189	192	195]';
% 
% % This is the difference between the survival days
% difday = [2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3 3]';
% 
% %Now we are finding the survival for every day, by geometric mean as in
% % Hancock 2016
% sk = zeros(177,1); 
% for k = 19:195
% place = find(sday >= k, 1 ) ;
% 
% sk(k-18) = survival(place)^(1/difday(place));
% 
% end

% Since the first cohort starts on day 17, but survival value begins on the
% 19th day. I am just putting the first cohort, then using the amount for
% day 19 to  estimate for day 18 
%sk2 = [1; sk(1) ; sk];



% if parm(4) < 0.1
%     parm(4)=0.1;
% elseif parm(4) >0.99
%     parm(4)=0.99;
% end
% 
% sk2 = [1; parm(4).*ones(179,1)];
sk2 = ones(180,1);

% Now we assume that without density dependence pupation is a gamma
% distribution
%thetaa = .36;
%nuu = 15.85;



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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
      den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl)));  
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
        hspot2 = hspot2(end);
        den = zeros(54,1);
          for kl = 1:hspot2 
              
    % dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
 
  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d;
      
      %den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run42s = sum(y); 
end


% This is for fun 5 Var 2 survival

parm = [ 35   707.8413   -0.0247  ] ;
d=1;


for itt = 1
    

if parm(3) < -1e-8
    par = parm(3);
else
par =   -1e-8;
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
thet = g2/g1; % Scale 
nu = g1/thet; % shape'


ff2 = @(den,a) (1+den).^a; %func 1
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
 Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

 % This is survival percent

% p4 = parm(4);
% if  p4< 0.1
%     p4=0.1;
% elseif p4 >0.99
%     p4 =0.99;
% end
% sk2 = [1; p4.*ones(179,1)];
sk2 = ones(180,1);


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
 den2 = zeros(n,t-18+d);
 j = 17;

    
  for k = 2:n
      % this adds in a new cohort on the correct day
   cohort(k-1,j-16) = Lhatch(k);     
   
   

   for i = 1:Lhatchdif(k-1)
       if( j < t  )
  j = j+1;
  den2(1:(k-1),j-18+d) = ones(k-1,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
      %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl)));  
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      

      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
%      dtype = zeros(1,d);
%           %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl))); 
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      

  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
       
       end
   end   
  end
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
%       %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
   %  den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
   
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run52s = nansum(y);
end

%This is for fun 7 Var 2 survival

parm = [ 35, 332.4147, 2.6583e-05 ,  -2.3432] ;
d=1;

for itt = 1
    

% This is for the density function
par =  parm(3:4);


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


ff2 = @(den,a,b) (1+a.*den).^b; % func 6

% This is the number of days that the data happens
t = 195;

% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% % larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 
% % This is the days which line up with the survival
% sday = [19	21	24	26	28	31	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147	150	152	154	157	159	161	164	166	168	171	173	175	178	180	182	185	187	189	192	195]';
% 
% % This is the difference between the survival days
% difday = [2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3 3]';
% 
% % Now we are finding the survival for every day, by geometric mean as in
% % Hancock 2016
% sk = zeros(177,1); 
% for k = 19:195
% place = find(sday >= k, 1 ) ;
% 
% sk(k-18) = survival(place)^(1/difday(place));
% 
% end
% 
% % Since the first cohort starts on day 17, but survival value begins on the
% % 19th day. I am just putting the first cohort, then using the amount for
% % day 19 to  estimate for day 18 
% sk2 = [1; sk(1) ; sk];

% 
% if parm(5) < 0.1
%     parm(5)=0.1;
% elseif parm(5) >0.99
%     parm(5)=0.99;
% end
%sk2 = [1; parm(5).*ones(179,1)];
sk2 = ones(180,1);
% Now we assume that without density dependence pupation is a gamma
% distribution
%thetaa = .36;
%nuu = 15.85;




%pd = makedist('Exponential',mu); 
x = 0:60;
yy = gamcdf(x, nu, thet);

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run72s = sum(y);
end

%This is for fun 9 Var 2 survival

parm = [ 35, 329.2111    8.3328e-05, 6.0290e-05] ;
d=1;


for itt = 1
    
    

par =  parm(3:4);


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


ff2 = @(den,a,b) 1./(exp(a+b.*den)-exp(a)+1); % func 7
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
 
% % Since the first cohort starts on day 17, but survival value begins on the
% % 19th day. I am just putting the first cohort, then using the amount for
% % day 19 to  estimate for day 18 
% sk2 = [1; sk(1) ; sk];

% if parm(5) < 0.1
%     parm(5)=0.1;
% elseif parm(5) >0.99
%     parm(5)=0.99;
% end

%sk2 = [1; parm(5).*ones(179,1)];
sk2 = ones(180,1);




 
x = 0:60;
yy = gamcdf(x, nu, thet);

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17)); 
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
  end
    
% Then I am just making sure the output starts on day 24 and ending on day
% t
run92s = sum(y);
end


%
%This is for fun 9 Var 4 survival

parm = [ -1.8690    0.0010    0.1000] ;
d=1;
for itt = 1
    

par =  parm(1:2);



ff2 = @(den,a,b) 1./(exp(a+b.*den) - exp(a) + 1); % func 7/1d
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
 
% % Since the first cohort starts on day 17, but survival value begins on the
% % 19th day. I am just putting the first cohort, then using the amount for
% % day 19 to  estimate for day 18 
% sk2 = [1; sk(1) ; sk];

if parm(3) < 0.1
    parm(3)=0.1;
elseif parm(3) >0.99
    parm(3)=0.99;
end

%sk2 = [1; parm(3).*ones(179,1)];

sk2 = ones(180,1);


 
%x = 0:65;
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

 n = 54;

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
  end
    
% Then I am just making sure the output starts on day 24 and ending on day
% t
run94s = sum(y);
end

%

figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run92s), '-*')
plot(1:179,(run94s), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')





%This is for fun 7 Var 4 survival

parm = [7.0551e-06    -9.5778    0.0291 ] ;
d=1;

for itt = 1
    
    

% This is for the density function
par =  parm(1:2);





ff2 = @(den,a,b) (1+a.*den).^b; % func 6

% This is the number of days that the data happens
t = 195;

% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous


if parm(3) < 0.01
    parm(3)=0.01;
elseif parm(3) >0.99
    parm(3)=0.99;
end
%sk2 = [1; parm(3).*ones(179,1)];

sk2 = ones(180,1);

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

 n = 54;

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run74s = sum(y);
    
end


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run72s), '-*')
plot(1:179,(run74s), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')



%
%This is for fun 5 Var 4 survival

parm = [ -0.0081  -16.5170] ;
d=1;

for itt = 1
    

if parm(1) < -1e-8
    par = parm(1);
else
par =   -1e-8;
end






ff2 = @(den,a) (1+den).^a; %func 1
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
 Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

 % This is survival percent

p4 = parm(2);
if  p4< 0.01
    p4=0.01;
elseif p4 >0.99
    p4 =0.99;
end
%sk2 = [1; p4.*ones(179,1)];

sk2 = ones(180,1);

yy = p4.*ones(1,61);

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

 n = 54;

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
  den2(1:(k-1),j-18+d) = ones(k-1,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
      %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl)));  
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      

      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
%      dtype = zeros(1,d);
%           %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl))); 
%           
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      

  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
       
       end
   end   
  end
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
%       %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./nansum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./nansum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl); % So we do not have infinity when it is zero
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./nansum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./nansum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
   %  den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
 
  
   y(1:n,j-17) = cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16); 
   
   cohort(:,j-16) = cohort(:,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17);
   
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run54s = nansum(y);
end

%
%
%This is for fun 4 Var 4 survival

parm = [ -0.0001    0.0291] ;
d=1;
for itt = 1
    

par =  parm(1);






ff2 = @(den,a) exp(a.*den); % func 2
t = 195;


% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';

% % This is the difference between the survival days
% difday = [2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3 3]';
% end



if parm(2) < 0.01
    parm(2)=0.01;
elseif parm(2) >0.99
    parm(2)=0.99;
end

%sk2 = [1; parm(2).*ones(179,1)];

sk2 = ones(180,1);


yy = parm(2).*ones(1,61);

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

 n = 54;

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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
      den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
     %dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl)));  
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
        hspot2 = hspot2(end);
        den = zeros(54,1);
          for kl = 1:hspot2 
              
    % dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
 
  
  
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
       
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
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d;
      
      %den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1)).*sk2(j-16) - y(1:n,j-17));
  end
    


% Then I am just making sure the output starts on day 24 and ending on day
% t
run44s = sum(y);
end

%
%
%This is for fun 3 Var 4 survival
ydata = [0 0 0 0 0 0 4	30	72	55	61	21	16	13	38	21	16	12	36	46	27	35	28	15	36	30	25	15	16	17	7	21	15	34	44	52	69	35	23	36	31	11	21	28	17	41	23	41	27	37	28	9	19	22	36	24	50	48	13	10	18	35	23	34	31	9	17	22	31	23	25	48	14	13	22	18	28	26	25	19	12	20	29	22	35	25	16	7	25	12	25	24	35	18	18	24	9	7	19	24	10	12	12	23	8	7	18	8	5	18	27	25	26	14	19	8	8	6	8	8	14	22	19	33	30	30	32	35	23	8	23	19	26	43	37	38	23	38	48	25	35	38	33	27	57	48	68	65	49	41	41	39	43	20	27	29	38	31	41	38	38	54	35	42	26	9	7	2	7	3	1	1	0	1	0	0 0	0	0 ]';

parm = [-0.1e-16, 4.8057,0.0193 ] ;
d=1;
for iit =1
    
    

par =  parm(1:2);






ff2  = @(den,a,b) exp(a.*(den.^b)); % func 4
%ff2 = @(den,a,b) (1+exp(a+b.*den)).^(-1);
t = 195;
% Here is the differenc in days for hatching
Lhatchdif = [4	5	2	5	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2	3	2	2]';

% This is the number that hatched for a given cohort
Lhatch = [100, 592	609	405	427	343	332	186	784	1192	609	893	1198	887	429	1286	436	765	784	491	435	775	353	254	598	375	618	1134	465	913	1114	1003	572	1091	559	1140	1192	431	773	766	258	273	315	147	388	193	163	44	260	111	203	139	185	88	361]';


% 
Lhatchday = [ 17	21	26	28	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147]';
% This is the estimated survival which was found by (previous
% larvae/current larvae)
% survival = [0.773648649	0.740174672	0.843881857	0.927135678	0.925072046	0.849293564	0.945736434	0.856349206	0.965292842	0.947592068	0.875182127	0.937478763	0.892055791	0.903734876	0.835432045	0.858681603	0.86748952	0.860084797	0.829579905	0.857268529	0.815527682	0.801965955	0.858142665	0.820076239	0.846769583	0.883579217	0.829429429	0.848742241	0.837829261	0.842582711	0.793064562	0.874349849	0.833683719	0.854351687	0.875715267	0.898076136	0.910172272	0.908481334	0.863474604	0.904152795	0.863125638	0.840517241	0.882780287	0.856115108	0.837750634	0.838459481	0.901372213	0.880288029	0.862900562	0.877675841	0.858046659	0.910137229	0.893160483	0.940839695	0.80620155	1.020178042	0.882869693	0.931648478	0.968871595	0.963014655	0.966115051	0.963573287	0.970504282	0.966942149	0.968794326	0.955074875	0.978813559	0.985221675	0.842900302	0.96	1.009708738	0.944444444	1.0625	0.714285714	1	0]';
% 
% % This is the days which line up with the survival
% sday = [19	21	24	26	28	31	33	35	38	40	42	45	47	49	52	54	56	59	61	63	66	68	70	73	75	77	80	82	84	87	89	91	94	96	98	101	103	105	108	110	112	115	117	119	122	124	126	129	131	133	136	138	140	143	145	147	150	152	154	157	159	161	164	166	168	171	173	175	178	180	182	185	187	189	192	195]';
% 

% Survival constant
if parm(3) < 0.01
    parm(3)=0.01;
elseif parm(3) >0.99
    parm(3)=0.99;
end

%sk2 = [1; parm(3).*ones(179,1)];

sk2 = ones(180,1);


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

 n = 54;

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
  den2(1:(k-1),j-18+d) = ones(k-1,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( hspot >1);
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d));
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%       dtype = dtype';
      

      dtype = ones(d,1)./d;
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
          for kl = hspot:hspot2 
              
 %    dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
    %  dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
        hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     den = zeros(54,1);
          for kl = 1:hspot2 
              
   %  dtype = zeros(1,d);
          %dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
%       dtype = dtype';
      
      dtype = ones(d,1)./totd(kl);
      den(kl) = den2(  kl,(j-17):(j-18 + d))* dtype;
          end
         
      end
      
  % This is the amount pupated per cohort
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   % This is the new amount
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
       
       end
   end
   end
   
  
  
  cohort(n,j-16) = Lhatch(n+1);
  
  while( j < t)
  % this is the same thing but after there is no new cohorts
  j = j+1;
  den2(1:(k),j-18+d) = ones(k,1).*nansum(cohort(:,j-17));

      % Total days from hatched
     totd = j.*ones(54,1) - Lhatchday;
     
     % finds first place younger than delay 
      hspot = find(totd <  d,1);
      if( isempty(hspot) == 0 );
      
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
%      dtype = dtype';
      
      dtype = ones(d,1)./d;
      
     den = zeros(54,1);
      den(1:hspot-1) = den2(1:hspot-1,(j-17):(j-18 + d))* dtype;
      
       hspot2 = find(totd >0 );
       hspot2 = hspot2(end);
     
         
          for kl = hspot:hspot2 
              
    % dtype = zeros(1,d);
         % dtype((d-totd(kl)+1):d) = linspace(1,20,totd(kl))./sum(linspace( 1,20, totd(kl))); 
          
%      dtt = linspace(0,2,totd(kl));
%       dtt = 1+(dtt-1).^2;
%       dtype((d-totd(kl)+1):d) = dtt./sum(dtt); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./totd(kl);
      
      den(kl) = den2( kl,(j-17):(j-18 + d))* dtype;
          end
      else
     
      %dtype = linspace(1,20,d)./sum(linspace(1,20,d)); 
%        dtype = linspace(0,2,d);
%       dtype = 1+(dtype-1).^2;
%       dtype = dtype./sum(dtype); 
 %     dtype = dtype';
  
      dtype = ones(d,1)./d; 
      
    % den = zeros(54,1);
      den = den2(:,(j-17):(j-18 + d))* dtype;
      end
      
     
 
  
   y(1:n,j-17) = round(cohort(1:n,j-17).*ff2(den, par(1), par(2)).*yy2(1:n,j-17).*sk2(j-16)); 
   
   cohort(:,j-16) = round(cohort(:,j-17).*ff2(den, par(1), par(2)).*sk2(j-16) - y(1:n,j-17));
  end
    
% Then I am just making sure the output starts on day 24 and ending on day
% t
run34s = nansum(y);
end


figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run32s), '-*')
plot(1:179,(run34s), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')

figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run42s), '-*')
plot(1:179,(run44s), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')

figure
plot(1:179, ydata, '-*')
hold on
plot(1:179,(run52s), '-*')
plot(1:179,(run54s), '-*')

xlabel('Day')
ylabel('Number Pupated')
set(gca,'FontSize', 18)
%axis([1,36,160,280])
legend('Data', 'Var II',  'Var IV')
%%