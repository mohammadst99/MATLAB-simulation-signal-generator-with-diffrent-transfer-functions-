%% Finding Y=K
clc;
Y=(ScopeData(:,2));
X=(ScopeData(:,1));
[a,b]=size(ScopeData);
k=4.5;
Y1(1:a)=k;
figure;
plot(X,Y)
hold on;
plot(X,Y1)

%% slope
for i=1:a-1
    m(i)=(Y(i)-Y(i+1))/(X(i)-X(i+1));
end
plot(1:a-1,m)
M_max= max(m)
n_M_max= find(m==M_max)

for j=1:a
    Y_tangential(j)=M_max*(X(j)-X(n_M_max))+Y(n_M_max)
end
X_tangential=X(1:a);
plot(X,Y_tangential)
hold on
plot(X,Y(1:a))
grid on;

%%
k1=k*(5/100);
yk(1:a)=k1
plot(X,yk)
hold on
plot(X,Y(1:a))
grid on
%% 3
plot(X,Y_tangential) % Y_tangential slope max
hold on
plot(X,Y1) %y1 hamaan y=k ast
grid on

%%
ka=0.28*k;
kb=0.63*k;
Y_ka(1:a)=ka;
Y_kb(1:a)=kb;
plot(X,Y_ka)% 23% k
hold on
plot(X,Y_kb)% 68 % k
hold on
plot(X,Y) % OUTPUT signal
grid on

%%
sum1=0
for l=1:a-1
    q=X(l+1)-X(l);
    w=k-Y(l+1);
    e=k-Y(l);
    sum1=sum1+(0.5*q*(w+e))
end
Tar=sum1
%%
tp=3.13;
d=0.794;
e=1/(sqrt(1+pow2(2*pi/log(d))))
w=(2*pi)/(tp*sqrt(1-pow2(e)))

%%
%matrix OUT  : X=OUT(:,1) , G1=OUT(:,3),G2=OUT(:,4),G3=OUT(:,5),G4=OUT(:,6),G5=OUT(:,7)
G1=OUT(:,3);
G2=OUT(:,4);
G3=OUT(:,5);
G4=OUT(:,6);
G5=OUT(:,7);
G6=OUT2(:,3);

deltaG1 = Y(:)-G1;
eG1=sum(deltaG1) /a 

deltaG2 = Y(:)-G2;
eG2=sum(deltaG2) /a 

deltaG3 = Y(:)-G3;
eG3=sum(deltaG3) /a 

deltaG4 = Y(:)-G4;
eG4=sum(deltaG4) /a 

deltaG5 = Y(:)-G5;
eG5=sum(deltaG5) /a

deltaG6 = Y(:)-G6;
eG6=sum(deltaG6) /a 









