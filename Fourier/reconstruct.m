function reconstructed_function = reconstruct(ao, An, Bn, n, w, t)
    %fourier_tmp = 0;
    fourier_tmp(length(t)) = 0;
    
    %An = transpose(An);
    %Bn = transpose(Bn);
    An = An';
    Bn = Bn';
    
    for i = 1:n
        % acho q estou usando mais pontos do q eu preciso
        coss = An(i)*cos(i*w*t);
        seno = Bn(i)*sin(i*w*t);
        fourier_tmp = fourier_tmp + coss + seno; 
    end
    
    reconstructed_function(1:length(t)) = fourier_tmp + ao;
    %reconstructed_function = ao + fourier_tmp;
    %display(reconstructed_function);
    plot(t, reconstructed_function);
    
    
end