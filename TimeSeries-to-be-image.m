function im=tstbi(X, n, level, showP)
%TIME SERIES-TO-BE-AN-IMAGE
% X...............time series
% n...............degree vector (first :R, second: G, third :B)
% level...........size of grid matrix (level x level)
% showP...........show image option (1 show, 0 not)
%
%USAGE
% X=rand(1,1000)
% im=tstbi(X, [1,2,3], 100, 1)
%
%AUTHOR
% Apdullah Yayık, apdullahyayik@gmail.com

for i=1:3
    im(:,:,i)= entropyM(X, 'grid', n(i), level, 0);
end
    if showP==1
        imshow(im)
    end
end
