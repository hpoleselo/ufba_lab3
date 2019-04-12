% Work of Integrated Laboratory 3
% Professor: Marcio Fontana
% Author: Henrique Poleselo

% This main function takes n points to restructure the input function with
% aid of the Fourier coefficients from the Fourier Series.
% We first 'filter' our input functions and then call the calcCoeff
% function which returns the coefficients

function mainRoutine()

    % Number of points that we wish to obtain the number of coefficients
    n = input ('How many points? ');


    signal = input ('Which signal as input?:\n 1 sen\n 2 quad\n 3 vrc\n 4 vt\n\n');
    if signal == 1
        [t1, vs] = genSinWave();
        t = t1;
        v = vs;
    end

     if signal == 2
        [t2, vq] = vquad();
        t = t2;
        v = vq;  
     end
     
     if signal == 3
        [t3, vrc_] = vrc();
        t = t3;
        v = vrc_;  
     end
     
     if signal == 4
        [t4, vtri] = vt();
        t = t4;
        v = vtri;  
     end
   
    
    [ao, An, Bn, w, t_norm] = calcCoeff(t, v, n);
    reconstruct(ao, An, Bn, n, w, t_norm);
    
    display('DC Component: ');
    display(ao);
    
    

end