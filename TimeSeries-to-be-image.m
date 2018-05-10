function im=tstbi(X, n, level, showP)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%TSTBI    Transforms given atime-serie into an grid entropy image for input representation 
%         in ConvNET
%
%               X...............time series
%               n...............degree vector (first :R, second: G, third :B)
%               level...........size of grid matrix (level x level)
%               showP...........show image option (1 show, 0 not)
%
%
%              Authored by , Apdullah Yayık 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%USAGE
% X=rand(1,1000)
% im=tstbi(X, [1,2,3], 100, 1)

for i=1:3
    im(:,:,i)= entropyM(X, 'grid', n(i), level, 0);
end
    if showP==1
        imshow(im)
    end
end
