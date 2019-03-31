% Calculates the coefficients from the Fourier Series ao, an and bn

function [ao, An, Bn, w, t_norm] = calcCoeff(xwave, ywave, n)
    % Takes the biggest value assumed by x
    p2 = max(xwave);
    
    % Takes the smallest value assumed by x
    p1 = min(xwave);
    t_norm = (p1:0.0001:p2);
    
    % Since our inputs are always one period then just substract the maximum value by the minimum value from x
    period = p2 - p1;
    display(period);
    
    % Frequency, gonna be used for the reconstruction
    w = 2*pi/period;
    
    % ----- coefficient ao -----
    
    % the function trapz is returning higher values
    ao = (2/(period))*trapz(xwave,ywave);
    
    % ----- COEFFICIENTS an AND bn ------
    
    % Vectors to store the coefficients
    A(n) = 0; B(n) = 0;
    %A = zeros(1,n);
    %B = zeros(1,n);
    
    for i = 1:n
       % Sines and cosines from the Fourier Series
       coss = cos(i*w*xwave);
       seno = sin(i*w*xwave); 
       
       % Input wave with sines and cosines
       tmpa = ywave.*coss;
       tmpb = ywave.*seno;
       
       A(i) = (2/period)*trapz(xwave, tmpa);
       B(i) = (2/period)*trapz(xwave, tmpb);
    end
    
    An = A;
    Bn = B;  
    display(An);
    display(Bn);
    
end