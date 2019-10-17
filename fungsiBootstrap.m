function [r] = fungsiBootstrap(n, setTrain, pilBoot)
    % % Membuat sebanyak bootstrap mungking tetapi harus ganjil
    % Disini saya ambil bootstrap 5
    i = 1;
    while (i<=n)
        if (pilBoot==1)
            % bootstrap 1 : ambil secara random data dari data train
            r1 = randperm(n,1); 
            boot1(i,1) = setTrain(r1,1);
            boot1(i,2) = setTrain(r1,2);
            hasil = boot1();
        elseif(pilBoot==2)
            % bootstrap 2 : ambil secara random data dari data train
            r2 = randperm(n,1); 
            boot2(i,1) = setTrain(r2,1);
            boot2(i,2) = setTrain(r2,2);
            hasil = boot2();
        elseif (pilBoot==3)
            % bootstrap 3 : ambil secara random data dari data train
            r3 = randperm(n,1); 
            boot3(i,1) = setTrain(r3,1);
            boot3(i,2) = setTrain(r3,2);
            hasil = boot3();
        elseif (pilBoot==4)
            % bootstrap 4 : ambil secara random data dari data train
            r4 = randperm(n,1); 
            boot4(i,1) = setTrain(r4,1);
            boot4(i,2) = setTrain(r4,2);
            hasil = boot4();
        elseif (pilBoot==5)
            % bootstrap 5 : ambil secara random data dari data train
            r5 = randperm(n,1); 
            boot5(i,1) = setTrain(r5,1);
            boot5(i,2) = setTrain(r5,2);
            hasil = boot5();
        end;
        i = i + 1;  
    end;
    r = hasil;


   
