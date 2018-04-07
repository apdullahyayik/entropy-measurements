function f= entropyM(X, type, level, showPlot)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ENTROPYM    Applies Entropy Measurement
%
%                X .................input data vactor
%                type...............measurement type ('circle, 'grid', 'incline' or 'square')
%                level..............number of circles
%                showPlot...........0->no show, 1 show
%                f..................number samples in each type
%
%
%              Authored by , Apdullah Yayık 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[x, y]=sodp(X);
x=normD(x');y=normD(y');

switch showPlot
    case 1
        figure('Color',[1 1 1]), plot(x,y,'b.')
end

switch type
    case 'circle'
        mn=1;mx=1;
        c=(mx-mn)/2; 
        [~,rhos]=cart2pol(x-c,y-c);
        f=zeros(1,level);
        for i=1:level;
            rho=i*max(rhos)/level;
            r=find(rhos<=rho);
            if i==1
                f(i)=length(r);
            else
                f(i)=length(r)-sum(f(1:i-1));
            end
            switch showPlot
                case 1
                    hold on
                    plot(rho*cos(0:2*pi/360:2*pi),rho*sin(0:2*pi/360:2*pi), 'Color',[.8 .8 .8])
                    axis equal
                    box off
            end
        end
    case 'grid'
        mn=-1; mx=1;
        w=(mx-mn)/level; %karenin eni
        P=zeros(level,level);
        for i=1:level
            for j=1:level
                %P2 her karede ka� tane nokta oldu�unu tutar.
                if j==level
                    P(i,j) = length( find( x>=(mn+w*(j-1)) & x<=(mn+w *j) & y>=(mn+w*(i-1)) & y<=(mn+w*i) ) );
                elseif i==level
                    P(i,j) = length( find( x>=(mn+w*(j-1)) & x<(mn+w*j) & y>=(mn+w*(i-1)) & y<=(mn+w*i) ) );
                else
                    P(i,j) = length( find( x>=(mn+w*(j-1)) & x<(mn+w*j) & y>=(mn+w*(i-1)) & y<(mn+w*i) ) );
                end
                switch showPlot
                    case 1
                        hold on
                        line([mn mx],mn+w*(i-1)*ones(1,2),'LineStyle','-',  'Color',[.8 .8 .8]),
                        line(mn+w*(i-1)*ones(1,2),[mn mx],'LineStyle','-', 'Color',[.8 .8 .8])
                end
            end
        end
      switch showPlot
          case 1 
              line([1,-1], [1,1], 'LineStyle','-',  'Color',[.8 .8 .8])
              line([1,1], [-1,1], 'LineStyle','-',  'Color',[.8 .8 .8])
        end
        f=reshape(P,1,level*level);
        
    case 'incline'
        mn=-1;mx=1;
        w=(mx-mn)/level;
        xx=mn:w:mx;
        j=1;
        for i=-level:2:level+2
            m=mn+w*(i+1);
            yy=xx-m;
            switch showPlot
                case 1
                    hold on
                    plot(xx,yy,'Color',[.8 .8 .8]);
            end
            y2=x-m;
            if i<=level
                r=find(y>=y2);
                if j==1
                    f(j)=length(r);
                else
                    f(j)=length(r)-sum(f(1:j-1));
                end
            else
                r=find(y<y2);
                f(j)=length(r); 
            end
            j=j+1; 
            switch showPlot
                case 1
                    axis([mn-w mx+w mn-w mx+w])
            end
        end 
        f(end)=length(x)-sum(f);
 
 case 'square' 
        mx=1;mn=-1;
        w=(mx-mn)/level;
        for i=1:level
            w1=(mn+(level-1)*w/2)-(i-1)*w/2;
            w2=(mn+(level-1)*w/2+w)+(i-1)*w/2;
            r=find( x>=w1 & x<=w2 & y>=w1 & y<=w2 );
            if i==1
                f(i)=length(r);
            else
                f(i)=length(r)-sum(f(1:i-1));
            end
            switch showPlot
                case 1
                      hold on
                      line([w1 w2],w1*ones(1,2),'LineStyle','-', 'Color',[.8 .8 .8]),
                      line([w1 w2],w2*ones(1,2),'LineStyle','-', 'Color',[.8 .8 .8]),
                      line(w1*ones(1,2),[w1 w2],'LineStyle','-', 'Color',[.8 .8 .8]),
                      line(w2*ones(1,2),[w1 w2],'LineStyle','-', 'Color',[.8 .8 .8]),
            end 
       end         
    end
end


function [x, y]= sodp(X)
% second-order difference plot

N=length(X);
x=zeros(1,N-2);y=x;
for i=1:N-2;
    x(i)=X(i+2)-X(i+1);
    y(i)=X(i+1)-X(i);
end
end


function X=normD(X)
% normalization

sizeX=size(X);
minn=zeros(1, size(X,2));
maxx=zeros(1, size(X,2));
for i=1:sizeX(2)
    minn(i)=min(X(:,i));
    maxx(i)=max(X(:,i));
end
for ii=1:sizeX(1)
    for j=1:sizeX(2)
        X(ii,j)=(((X(ii,j)-minn(j))/(maxx(j)-minn(j))))*2-1;
    end
end
end

