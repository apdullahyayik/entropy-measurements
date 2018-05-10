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

    @Article{Yayık2018,
       author="Yayık, Apdullah
       and Kutlu, Yakup
       and Altan, Gökhan",
       title="Regularized HessELM and Inclined Entropy Measurement for Congestive Heart Failure Prediction",
       journal="Medical & Biological Computer Science",
       year="2018",
       month="",
       day="",
        abstract="Our study concerns with automated predicting of congestive heart failure (CHF) through the analysis of electrocardiography (ECG) signals. A novel machine learning approach, regularized hessenberg decomposition based extreme learning machine (R-HessELM), and four number of feature models, squared, circled, inclined and grid entropy measurements, were introduced and used as a basis for prediction of CHF. This study proved that inclined entropy measurements are the features which well represent characteristics of ECG signals and R-HessELM approach on these features achieved overall accuracy of 98.49%"
         }


# TIME SERIES-TO-BE-AN-IMAGE
              X...............time series
              n...............degree vector (first :R, second: G, third :B)
              level...........size of grid matrix (level x level)
              showP...........show image option (1 show, 0 not)
# USAGE
X=rand(1,1000)
im=tstbi(X, [1,2,3], 100, 1)
