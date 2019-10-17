function [testing]  = fungsiTesting(barTest, testSet)
% % Ditest dengan data Test
    for n = 1 : barTest
         %Model 1
        if testSet(n,1)>=0.75 && testSet(n,2)<=27
            model1(n)= 1;  
        else 
            model1(n) = 2 ; 
        end;

        % Model 2
        if testSet(n,1)>=0.75 && testSet(n,2)<=9
            model2(n) = 1;   
        else 
            model2(n) = 2 ;
        end; 

         % Model 3
        if testSet(n,1)>=0.75 && testSet(n,2)<=27
            model3(n) = 1;   
        else 
            model3(n)= 2 ;
        end;

         % Model 4
        if testSet(n,1)>=0.75 && testSet(n,2)<=9
            model4(n) = 1;   
        else 
            model4(n) = 2 ;
        end;

         % Model 5
        if testSet(n,1)>=0.75 && testSet(n,2)<=3
            model5(n,3) = 1;   
        else 
            model5(n,3) = 2 ;
        end;


        jumKelas1(n) = 0;
        jumKelas2(n) = 0;

        if(model1(n) == 1)
            jumKelas1(n) = jumKelas1(n) + 1;
        else
            jumKelas2(n) = jumKelas2(n) + 1;
        end

        if(model2(n) == 1)
            jumKelas1(n) = jumKelas1(n) + 1;
        else
            jumKelas2(n) = jumKelas2(n) + 1;
        end

        if(model3(n) == 1)
            jumKelas1(n) = jumKelas1(n) + 1;
        else
            jumKelas2(n) = jumKelas2(n) + 1;
        end

        if(model4(n) == 1)
            jumKelas1(n) = jumKelas1(n) + 1;
        else
           jumKelas2(n) = jumKelas2(n) + 1;
        end

        if(model5(n) == 1)
            jumKelas1(n) = jumKelas1(n) + 1;
        else
            jumKelas2(n) = jumKelas2(n) + 1;
        end


        % Bandingkan jumKelas1 dengan jumKelas2 
        if(jumKelas1(n) > jumKelas2(n))
            testSet(n,3) = 1;
        else
            testSet(n,3) = 2; 
        end
    end
    testing = testSet();

