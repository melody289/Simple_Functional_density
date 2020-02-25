%% This is fig 2
% We pulled these values using a digitizer from the paper. We then are
% roundig the values and aligning the start time.
HancEst = [ 4, 42.04811587	68.11363647	64.85199193	53.28958153	35.20582929	21.53714466	17.23602838	15.48522603	21.14114114	21.67989577	27.17547761	29.44210485	29.96756698	29.77066905	29.29566638	29.08429785	26.91153177	24.75374596	23.86256163	22.37410606	21.24524131	21.1760635	21.59880057	24.08675797	27.25377808	31.06007332	33.5784549	35.63866886	36.27627628	36.27627628	35.78227712	34.74657131	34.1437124	33.61529107	32.1672988	30.66290886	29.15938619	28.41319376	28.5118324	28.45729382	27.97330468	27.64450918	26.84784277	26.51655522	26.78278673	27.39927827	27.86786787	28.02510906	28.61694096	28.69313454	28.06515795	27.02945213	26.72054761	26.50917907	25.82621897	25.10452337	24.53545424	24.09830302	23.78125022	23.7518271	24.58409072	25.41635433	24.98182274	23.87213793	23.54354354	23.54354354	23.42009167	23.27081868	23.02422206	22.75502675	22.38513181	22.34234234	20.70911364	21.1951109	21.63028141	22.06545191	22.21815336	21.87671188	21.80871592	22.5485058	22.32595964	22.03436666	21.63084493	21.19308804	20.69989479	19.68789111	18.99554931	18.4274127	17.98353878	17.41145021	16.72856726	15.79655397	14.84143937	14.6564919	14.47154444	14.41441441	14.41441441	13.92748484	13.45345345	13.45345345	13.61561856	13.86221518	14.45856755	15.19835742	15.37537538	15.41223377	15.68124827	15.98566535	16.42421717	18.11516548	18.64522213	19.06795919	19.53594243	20.02913568	20.59075865	21.19295287	22.16608361	23.39325333	23.64408001	23.34816407	24.37925403	25.64746523	26.56444039	27.22203139	27.87962239	28.61924821	29.40255512	30.18586203	31.59041222	33.45252764	34.86320882	35.84076797	37.64914313	39.14929313	40.51505903	41.18937973	41.95739186	44.17676149	44.49646112	44.79237706	45.08829301	44.89136044	44.5214655	44.15157056	43.39684471	42.20244656	39.6660241	38.45365036	37.3968077	34.4214318	31.55651473	29.1167772	26.81528357	24.96580896	22.28343216	20.10383233	18.87084922	17.26563086	15.35807532	13.50860065	11.87384732	10.26930462	8.345851034	6.853430337	6.008954459	5.553699158	4.234779779	1.386437981	0	0	0 0 ]';
HancEst = round(HancEst);
HancEst = [ 0,0,0,0,0,0,HancEst']';

% we run with no density first
% After the 50 runs this was pulled as the best value
% comes from pargamr(44,4:6) any iF

parm = [9.7493   16.9528    0.7998];
for iii = 1
    
   

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
   
   cohort(:,j-16) = round(cohort(:,j-17).*sk2(j-16) - y(1:n,j-17));
   
  end
   y = sum(y);
y = y(1:end)';  
end

Gamonly = y;

% this was pulled directly from data
ydata = [0 0 0 0 0 0 4	30	72	55	61	21	16	13	38	21	16	12	36	46	27	35	28	15	36	30	25	15	16	17	7	21	15	34	44	52	69	35	23	36	31	11	21	28	17	41	23	41	27	37	28	9	19	22	36	24	50	48	13	10	18	35	23	34	31	9	17	22	31	23	25	48	14	13	22	18	28	26	25	19	12	20	29	22	35	25	16	7	25	12	25	24	35	18	18	24	9	7	19	24	10	12	12	23	8	7	18	8	5	18	27	25	26	14	19	8	8	6	8	8	14	22	19	33	30	30	32	35	23	8	23	19	26	43	37	38	23	38	48	25	35	38	33	27	57	48	68	65	49	41	41	39	43	20	27	29	38	31	41	38	38	54	35	42	26	9	7	2	7	3	1	1	0	1	0	0 0	0	0 ]';


hold on
plot(1:179, Gamonly,'o-', 'LineWidth', 2.1)

plot(1:179, HancEst,'o-', 'LineWidth', 2.1)

plot(1:179, ydata,'o-',  'MarkerSize', 5,  'MarkerFace','[0.9290    0.6940    0.1250]')

legend('No Density', 'Hancock', 'Data')
xlabel('Days')
ylabel('Pupation Total')
set(gca, 'FontSize', 25)


%% I have included all the runs in the data set so that none of it needs to be run as this takes a long time

load('FunctionRuns')
% here is for fig 3, using data run


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
%boxplot(bp(:, 1:end),'Colors', [0    0.4470    0.7410], 'Widths',0.25, 'Whisker',10000000000 )

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

%boxplot(bp(:, 1:end), 'Positions', 1.3:16.3,'Colors', [0.9290    0.6940    0.1250], 'Widths',0.25, 'Whisker',10000000000 )


%ylabel('(Mean Squared Error)^{1/2}', 'FontSize', 20)
set(gca,'XTick',[1.37:16 16.],'XTickLabel', c)
set(gca,'YTick',[0],'YTickLabel', '1')
%axis([ 0.6, 7.7, 130, 320])
set(gca,'FontSize', 20)


%
%%
d = [1, 2:2:36];
figure
plot(d, m54,'--^', 'MarkerSize', 10)
hold on
plot(d, m44, '--^', 'MarkerSize', 10)
hold on
plot(d, m64, '--^', 'MarkerSize', 10)
plot(d, m34, '--^', 'MarkerSize', 10)
plot(d, m84, '--^', 'MarkerSize', 10)
plot(d, m74,'--^', 'MarkerSize', 10)
plot(d, m94,'--^', 'MarkerSize', 10)

plot([1 ,36],  [290, 290], '--', 'LineWidth', 2)
plot([1 ,36],  [132.5 132.5], '--','LineWidth', 2)
%legend('1a','1b','1c','2a','2b','2c','2d', 'Location', 'NorthEast')

%legend('1a','1b','1c','2a','2b','2c','2d','None','Hancock', 'Location', 'SouthEast')
axis([1, 36, 130, 320])
ylabel('(Mean Squared Error)^{1/2}')
xlabel('Density History (Days)')
set(gca,'FontSize', 20)

%
%
d = [ 1, 2:2:36];
figure
plot(d, m5,'--^', 'MarkerSize', 10)
hold on
plot(d, m4, '--^', 'MarkerSize', 10)
hold on
plot(d, m6, '--^', 'MarkerSize', 10)
plot(d, m3, '--^', 'MarkerSize', 10)
plot(d, m8, '--^', 'MarkerSize', 10)
plot(d, m7,'--^', 'MarkerSize', 10)
plot(d, m9,'--^', 'MarkerSize', 10)

plot([1 ,36],  [290, 290], '--', 'LineWidth', 2)
plot([1 ,36],  [132.5, 132.5], '--','LineWidth', 2)
%legend('1a','1b','1c','2a','2b','2c','2d', 'Location', 'NorthEast')
%legend('1a','1b','1c','2a','2b','2c','2d','None','Hancock', 'Location', 'SouthEast')
axis([1, 36, 130, 320])
ylabel('(Mean Squared Error)^{1/2}')
xlabel('Density History (Days)')
set(gca,'FontSize', 20)

% survival var 2
%
figure
plot(d, m5s,'--^', 'MarkerSize', 10)
hold on
plot(d, m4s, '--^', 'MarkerSize', 10)
hold on
plot(d, m6s, '--^', 'MarkerSize', 10)
plot(d, m3s, '--^', 'MarkerSize', 10)
plot(d, m8s, '--^', 'MarkerSize', 10)
plot(d, m7s,'--^', 'MarkerSize', 10)
plot(d, m9s,'--^', 'MarkerSize', 10)

plot([1 ,36],  [290, 290], '--', 'LineWidth', 2)
plot([1 ,36],  [146, 146], '--','LineWidth', 2)
%legend('1a','1b','1c','2a','2b','2c','2d', 'Location', 'NorthEast')

legend('1a','1b','1c','2a','2b','2c','2d','None','Hancock', 'Location', 'NorthEast')
axis([1, 36, 145, 320])
ylabel('(Mean Squared Error)^{1/2}')
xlabel('Density History (Days)')
set(gca,'FontSize', 20)

% survival var 3
figure
plot(d, m5s4,'--^', 'MarkerSize', 10)
hold on
plot(d, m4s4, '--^', 'MarkerSize', 10)
hold on
plot(d, m6s4, '--^', 'MarkerSize', 10)
plot(d, m3s4, '--^', 'MarkerSize', 10, 'Color', [0.4940    0.1840    0.5560])
plot(d, m8s4, '--^', 'MarkerSize', 10, 'Color', [0.4660    0.6740    0.1880])
plot(d, m7s4,'--^', 'MarkerSize', 10,'Color', [0.3010    0.7450    0.9330])
plot(d, m9s4,'--^', 'MarkerSize', 10)

plot([1 ,36],  [290, 290], '--', 'LineWidth', 2)
plot([1 ,36],  [132, 132], '--','LineWidth', 2)

axis([1, 36, 132, 320])
ylabel('(Mean Squared Error)^{1/2}')
xlabel('Density History (Days)')
set(gca,'FontSize', 20)


%% this is for fig 7

%

aic8s = 172.*log10(d'.*(m8s.^2)./172)./d' + 10;
aic6s = 172.*log10(d'.*(m6s.^2)./172)./d' + 8;



aic8s4 = 172.*log10(d'.*(m8s4.^2)./172)./d' + 8;
aic6s4 = 172.*log10(d'.*(m6s4.^2)./172)./d' + 6;

aic84 = 172.*log10(d'.*(m84.^2)./172)./d' + 8 ;
aic64 = 172.*log10(d'.*(m64.^2)./172)./d' + 6;
aic8 = 172.*log10(d'.*(m8.^2)./172)./d' + 12 ;
aic6 = 172.*log10(d'.*(m6.^2)./172)./d' + 10;



for i = 1:19
    
  m2 = max([ aic84(i), aic64(i), aic8(i),aic6(i),  aic8s(i),aic6s(i),  aic8s4(i),aic6s4(i)]);
   
  aic84(i) = aic84(i)/m2;
   aic64(i)= aic64(i)/m2;
 
   aic8(i)= aic8(i)/m2;
   aic6(i)= aic6(i)/m2;
      aic8s4(i) = aic8s4(i)/m2;
   aic6s4(i)= aic6s4(i)/m2;
  
   aic8s(i)= aic8s(i)/m2;
   aic6s(i)= aic6s(i)/m2;
end


%plot(d, aic5,'--d', 'MarkerSize', 10, 'Color', [  0    0.4470    0.7410])
hold on
plot(d, aic6,'--d', 'MarkerSize', 10, 'Color', [0.9290    0.6940    0.1250])
hold on
%plot(d, aic3, '--d', 'MarkerSize', 10, 'Color', [ 0.4940    0.1840    0.5560])
plot(d, aic8, '--d', 'MarkerSize', 10, 'Color', [0.4660    0.6740    0.1880])

%plot(d, aic54,'--*', 'MarkerSize', 10, 'Color', [0    0.4470    0.7410])
hold on
plot(d, aic64,'--*', 'MarkerSize', 10, 'Color', [0.9290    0.6940    0.1250])
%plot(d, aic34, '--*', 'MarkerSize', 10, 'Color', [ 0.4940    0.1840    0.5560])
plot(d, aic84, '--*', 'MarkerSize', 10, 'Color', [0.4660    0.6740    0.1880])


%plot(d, aic5s,'--o', 'MarkerSize', 10, 'Color', [  0    0.4470    0.7410])
hold on
plot(d, aic6s,'--o', 'MarkerSize', 10, 'Color', [0.9290    0.6940    0.1250])
%plot(d, aic3s, '--o', 'MarkerSize', 10, 'Color', [ 0.4940    0.1840    0.5560])
plot(d, aic8s, '--o', 'MarkerSize', 10, 'Color', [0.4660    0.6740    0.1880])

%plot(d, aic5s4,'--p', 'MarkerSize', 10, 'Color', [0    0.4470    0.7410])
hold on
plot(d, aic6s4,'--p', 'MarkerSize', 10, 'Color', [0.9290    0.6940    0.1250])
%plot(d, aic3s4, '--p', 'MarkerSize', 10, 'Color', [ 0.4940    0.1840    0.5560])
plot(d, aic8s4, '--p', 'MarkerSize', 10, 'Color', [0.4660    0.6740    0.1880])
%plot([1 ,36],  [276, 276], '--')
%plot([1 ,36],  [146, 146], '--')
%legend('1c vII Development Time','2b vII Development Time','1c vIII Development Time','2b vIII Development Time', '1c vII Survival','2b vII Survival','1c vIII Survival','2b vIII Survival','Location', 'NorthEast')
axis([1, 36, 0.79, 1])
ylabel('Relative AIC')
xlabel('Density History (Days)')
set(gca,'FontSize', 20)