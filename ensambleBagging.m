%%      Tugas 4 Machine Learning 
%% Nama  : Simiao Salvador da Gama
%% NIM   : 1301163617
%% Kelas : IF-40-12

clc;
clear all ;

% Membaca data train dan data test
dataTrain = importdata('TrainsetTugas4ML.csv');
dataTest = importdata('TestsetTugas4ML.csv');

% Menetukaan size baris dan kolom pada data train dan data test;
[barTrain, kolTrain] = size(dataTrain.data);
[barTest, kolTest] = size(dataTest.data);

% Memanggil bootstrap yang sudah ada isi data Train secara random
bootstrap1 = fungsiBootstrap(barTrain,dataTrain.data, 1);
bootstrap2 = fungsiBootstrap(barTrain,dataTrain.data, 2);
bootstrap3 = fungsiBootstrap(barTrain,dataTrain.data, 3);
bootstrap4 = fungsiBootstrap(barTrain,dataTrain.data, 4);
bootstrap5 = fungsiBootstrap(barTrain,dataTrain.data, 5);

% Menentukan kelas tiap bootstrap
for n=1:barTrain
    %Bootstrap 1
     if bootstrap1(n,1)>=0.75 && bootstrap1(n,2)<=27
         bootstrap1(n,3) = 1;  
     else
         bootstrap1(n,3) = 2 ;
     end;

     % Bootstrap 2
     if bootstrap2(n,1)>=0.75 && bootstrap2(n,2)<=9
         bootstrap2(n,3) = 1;   
     else 
         bootstrap2(n,3) = 2 ;
     end; 

     % Bootstrap 3
     if bootstrap3(n,1)>=0.75 && bootstrap3(n,2)<=27
         bootstrap3(n,3) = 1;   
     else 
         bootstrap3(n,3) = 2 ;
     end;

     % Bootstrap 4
     if bootstrap4(n,1)>=0.75 && bootstrap4(n,2)<=9
         bootstrap4(n,3) = 1;   
     else
         bootstrap4(n,3) = 2 ;
     end;

     % Bootstrap 5
     if bootstrap5(n,1)>=0.75 && bootstrap5(n,2)<=3
         bootstrap5(n,3) = 1;   
     else
         bootstrap5(n,3) = 2 ;
     end;
end;

totKelas1 = 0;
totKelas2 = 0;
for i = 1 : barTrain
   
    if(bootstrap1(i,3) == 1)
        totKelas1 = totKelas1 + 1;
    else
        totKelas2 = totKelas2 + 1;
    end
    
    
    if(bootstrap2(i,3) == 1)
        totKelas1 = totKelas1 + 1
    else
        totKelas2 = totKelas2 + 1
    end
    
    
    if(bootstrap3(i,3) == 1)
        totKelas1 = totKelas1 + 1
    else
        totKelas2 = totKelas2 + 1
    end
    
    if(bootstrap4(i,3) == 1)
        totKelas1 = totKelas1 + 1
    else
        totKelas2 = totKelas2 + 1
    end
    
    if(bootstrap5(i,3) == 1)
        totKelas1 = totKelas1 + 1
    else
        totKelas2 = totKelas2 + 1
    end
    % Menertukan akurasi 
    if(totKelas1 < totKelas2)
        akurasi(i) = 2;
    else
        akurasi(i) = 1;
    end
end

% Menentukan Akurasi 
jumFinal = 0
for k = 1 : barTrain
    if(akurasi(k) == dataTrain.data(k,3))
        jumFinal = jumFinal + 1;
    end
end
% Akurasi yang didapatkan dari data train 
finalAkurasi = (jumFinal / barTrain) * 100;
finalAkurasi = ceil(finalAkurasi)
fprintf('Akurasi yang didapat = %2d',finalAkurasi); 
disp('%');

% Menentukan hasil Testing 
hasilTesting = fungsiTesting(barTest,dataTest.data);

% Simpan ke dalam file csv
headers={'X1','X2','Class'};
result = array2table(hasilTesting,'VariableNames',headers);
writetable(result,'TebakanTugas4ML.csv','Delimiter',',','QuoteStrings',true);
