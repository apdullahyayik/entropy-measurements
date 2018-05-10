# TIME-SERIES ANALYSIS
Analysis of time-series
ENTROPYM    Applies Entropy Measurement

                X .................input data vactor
                type...............measurement type ('circle, 'grid', 'incline' or 'square')
                level..............number of circles
                showPlot...........0->no show, 1 show
                f..................number samples in each type

# USAGE
X=rand(1,1000)*2;
f= entropyM(X, 'incline', 15, 1)
f= entropyM(X, 'square', 15, 1)
f= entropyM(X, 'circle', 15, 1)
f= entropyM(X, 'grid', 15, 1)

# TIME SERIES-TO-BE-AN-IMAGE
              X...............time series
              n...............degree vector (first :R, second: G, third :B)
              level...........size of grid matrix (level x level)
              showP...........show image option (1 show, 0 not)
# USAGE
X=rand(1,1000)
im=tstbi(X, [1,2,3], 100, 1)
