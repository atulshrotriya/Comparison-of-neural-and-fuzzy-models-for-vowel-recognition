function traindata
%vowels

[y{1}]=audioread("Recording.m4a");
[y{2}]=audioread("Recording (2).m4a");
[y{3}]=audioread("Recording (3).m4a");
[y{4}]=audioread("Recording (4).m4a");
[y{5}]=audioread("Recording (5).m4a");
[y{6}]=audioread("Recording (6).m4a");
[y{7}]=audioread("Recording (7).m4a");
[y{8}]=audioread("Recording (8).m4a");
[y{9}]=audioread("Recording (9).m4a");
[y{10}]=audioread("Recording (10).m4a");

[y{11}]=audioread("Recording (11).m4a");
[y{12}]=audioread("Recording (12).m4a");
[y{13}]=audioread("Recording (13).m4a");
[y{14}]=audioread("Recording (14).m4a");
[y{15}]=audioread("Recording (15).m4a");
[y{16}]=audioread("Recording (16).m4a");
[y{17}]=audioread("Recording (17).m4a");
[y{18}]=audioread("Recording (18).m4a");
[y{19}]=audioread("Recording (19).m4a");
[y{20}]=audioread("Recording (20).m4a");

[y{21}]=audioread("Recording (21).m4a");
[y{22}]=audioread("Recording (22).m4a");
[y{23}]=audioread("Recording (23).m4a");
[y{24}]=audioread("Recording (24).m4a");
[y{25}]=audioread("Recording (25).m4a");
[y{26}]=audioread("Recording (26).m4a");
[y{27}]=audioread("Recording (27).m4a");
[y{28}]=audioread("Recording (28).m4a");
[y{29}]=audioread("Recording (29).m4a");
[y{30}]=audioread("Recording (30).m4a");

[y{31}]=audioread("Recording (31).m4a");
[y{32}]=audioread("Recording (32).m4a");
[y{33}]=audioread("Recording (33).m4a");
[y{34}]=audioread("Recording (34).m4a");
[y{35}]=audioread("Recording (35).m4a");
[y{36}]=audioread("Recording (36).m4a");
[y{37}]=audioread("Recording (37).m4a");
[y{38}]=audioread("Recording (38).m4a");
[y{39}]=audioread("Recording (39).m4a");
[y{40}]=audioread("Recording (40).m4a");

[y{41}]=audioread("Recording (41).m4a");
[y{42}]=audioread("Recording (42).m4a");
[y{43}]=audioread("Recording (43).m4a");
[y{44}]=audioread("Recording (44).m4a");
[y{45}]=audioread("Recording (45).m4a");
[y{46}]=audioread("Recording (46).m4a");
[y{47}]=audioread("Recording (47).m4a");
[y{48}]=audioread("Recording (48).m4a");
[y{49}]=audioread("Recording (49).m4a");
[y{50}]=audioread("Recording (50).m4a");

% for i=1:1:50
%     figure()
%     plot(y{i})
% end
po=15000;
v(:,1)=y{1}(38330:38330+po,1);
v(:,2)=y{2}(52320:52320+po,1);
v(:,3)=y{3}(36190:36190+po,1);
v(:,4)=y{4}(83270:83270+po,1);
v(:,5)=y{5}(83790:83790+po,1);
v(:,6)=y{6}(62540:62540+po,1);
v(:,7)=y{7}(51420:51420+po,1);
v(:,8)=y{8}(45300:45300+po,1);
v(:,9)=y{9}(75570:75570+po,1);
v(:,10)=y{10}(60470:60470+po,1);
v(:,11)=y{11}(60930:60930+po,1);
v(:,12)=y{12}(64780:64780+po,1);
v(:,13)=y{13}(75600:75600+po,1);
v(:,14)=y{14}(57430:57430+po,1);
v(:,15)=y{15}(58930:58930+po,1);
v(:,16)=y{16}(51210:51210+po,1);
v(:,17)=y{17}(77430:77430+po,1);
v(:,18)=y{18}(54120:54120+po,1);
v(:,19)=y{19}(45650:45650+po,1);
v(:,20)=y{20}(94210:94210+po,1);
v(:,21)=y{21}(58800:58800+po,1);
v(:,22)=y{22}(43270:43270+po,1);
v(:,23)=y{23}(55870:55870+po,1);
v(:,24)=y{24}(60320:60320+po,1);
v(:,25)=y{25}(73750:73750+po,1);
v(:,26)=y{26}(52890:52890+po,1);
v(:,27)=y{27}(70110:70110+po,1);
v(:,28)=y{28}(89830:89830+po,1);
v(:,29)=y{29}(83620:83620+po,1);
v(:,30)=y{30}(52510:52510+po,1);
v(:,31)=y{31}(71870:71870+po,1);
v(:,32)=y{32}(64070:64070+po,1);
v(:,33)=y{33}(56930:56930+po,1);
v(:,34)=y{34}(50170:50170+po,1);
v(:,35)=y{35}(69290:69290+po,1);
v(:,36)=y{36}(61540:61540+po,1);
v(:,37)=y{37}(40770:40770+po,1);
v(:,38)=y{38}(64160:64160+po,1);
v(:,39)=y{39}(65200:65200+po,1);
v(:,40)=y{40}(56410:56410+po,1);
v(:,41)=y{41}(89000:89000+po,1);
v(:,42)=y{42}(54500:54500+po,1);
v(:,43)=y{43}(42000:42000+po,1);
v(:,44)=y{44}(60000:60000+po,1);
v(:,45)=y{45}(37500:37500+po,1);
v(:,46)=y{46}(43500:43500+po,1);
v(:,47)=y{47}(41000:41000+po,1);
v(:,48)=y{48}(41980:41980+po,1);
v(:,49)=y{49}(51000:51000+po,1);
v(:,50)=y{50}(65000:65000+po,1);

n=16384; freq=16000*(0:n/2-1)/n;
for i=11:1:20
    kb=1;
    F=fft(v(:,i),n);
    figure()
    plot(freq,abs(F(1:n/2)),'');
end     



% V(:,1)=y{1}(37820:37820+po,1);
% W(:,1)=y{1}(37820:37820+po,2);
% figure(1)
% plot(V)
% hold on
% plot(W)
% J=y{1}(57630:75820,1);
% K=y{2}(38100:54160,1);
% L=y{3}(51900:65400,1);
% M=y{4}(42500:56000,1);
% n=16384; freq=16000*(0:n/2-1)/n;
% F1=fft(J,n);
% F2=fft(K,n);
% F3=fft(L,n);
% F4=fft(M,n);
% figure(1)
% plot(freq,abs(F1(1:n/2)))
% figure(2)
% plot(freq,abs(F2(1:n/2)))
% figure(3)
% plot(freq,abs(F3(1:n/2)))
% figure(4)
% plot(freq,abs(F4(1:n/2)))
% n=32768; freq=15000*(0:n/2-1)/n;
% F=fft(J,n);
% plot(freq,abs(F(1:n/2)))
% [y{2}]=audioread("Recording (22).m4a");
% [y{3}]=audioread("Recording (23).m4a");
% [y{4}]=audioread("Recording (24).m4a");
% [y{5}]=audioread("Recording (25).m4a");
% [y{6}]=audioread("Recording (26).m4a");
% [y{7}]=audioread("Recording (27).m4a");
% [y{8}]=audioread("Recording (28).m4a");
% [y{9}]=audioread("Recording (29).m4a");
% [y{10}]=audioread("Recording (30).m4a");
% n=32768; freq=15000*(0:n/2-1)/n; i=1;
% while i<11
%     kb=1;
%     F=fft(y{i}(:,1),n);
% %    F=fft(sum(y{i},2)/size(y,2),n);
%     figure()
%     plot(freq,abs(F(1:n/2)).^2,'');
%     [B,C]=findpeaks(abs(F(1:n/2)));
%     for j=1:1:length(B)
%         if B(j,1)>3 && kb<3
%             PE(kb,i)=C(j,1)
%             kb=kb+1;
%         end
%     end
%       i=i+1;
% end
% 
% f=fft(y(:,1),n);
% plot(freq,abs(f(1:n/2)),'');
end