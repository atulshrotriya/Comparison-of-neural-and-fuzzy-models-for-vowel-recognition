function neuralnet2
p(:,1:10)=[147.5 140.6 138.7 132.8 133.8 120.1 161.1 141.6 125 149.4;757.8 731.4 736.3 747.1 734.4 741.2 737.3 757.8 709 747.1];
p(:,11:20)=[99.61 94.73 72.27 101.6 83.71 84.96 83.01 113.3 78.8 98.63;149.4 141.6 126.4 152.3 156.3 159.2 150 170 141.6 132.8];
p(:,21:30)=[229.5 216.8 249 209 219.7 286.1 238.3 272.5 306.6 289.1;459 458 475.6 492.2 477.5 477.5 476.6 476.6 458 481.4];
p(:,31:40)=[156.3 132.8 121.1 133.8 151.4 160.2 120.1 142.6 135.7 201.2;273.4 266.6 291 302.7 266.6 240.2 219.7 311.5 274.4 302.7];
p(:,41:50)=[51.76 49.8 49.8 53.71 50.1 52.73 59.34 45.9 52.73 54.22;103.5 113.3 114.3 86.91 101.6 115.2 120.7 82.03 104.5 114.8];
t=[zeros(3,10) [0;0;1] [0;0;1] [0;0;1] [0;0;1] [0;0;1] [0;0;1] [0;0;1] [0;0;1] [0;0;1] [0;0;1] [0;1;0] [0;1;0] [0;1;0] [0;1;0] [0;1;0] [0;1;0] [0;1;0] [0;1;0] [0;1;0] [0;1;0] [0;1;1] [0;1;1] [0;1;1] [0;1;1] [0;1;1] [0;1;1] [0;1;1] [0;1;1] [0;1;1] [0;1;1] [1;0;0] [1;0;0] [1;0;0] [1;0;0] [1;0;0] [1;0;0] [1;0;0] [1;0;0] [1;0;0] [1;0;0]];
weight=rand(50,1);
thresh=1;
error=ones(50,1);
e=0.5;
while norm(error)>1e-5
for k=1:50
P=[p(:,k);thresh];
tnet=hardlim(weight'.*P);
error(k)=t(:,k)-tnet;
if abs(error(k))>1e-6
weight=weight-sign(weight'*P)*e*P;
end
end
end
it=0:0.1:800;
out=(-weight(1)*it-weight(3))/weight(2);
hold on
figure()
plot(p(1,1:10),p(2,1:10),'g+','LineWidth', 2,'MarkerSize', 5)
hold on
plot(p(1,11:20),p(2,11:20),'ro','LineWidth', 2,'MarkerSize', 5)
hold on
plot(p(1,21:30),p(2,21:30),'k+','LineWidth', 2,'MarkerSize', 5)
hold on
plot(p(1,31:40),p(2,31:40),'r+','LineWidth', 2,'MarkerSize', 5)
hold on
plot(p(1,41:50),p(2,41:50),'go','LineWidth', 2,'MarkerSize', 5)
hold on
plot(it,out,'r')
end