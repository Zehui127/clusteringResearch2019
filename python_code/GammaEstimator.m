% Fit gamma pdf to data
data = table2array(foo)
ab   = gamfit(data);
% Write the functional form of the pdf with the estimated parameters
a    = ab(1);
b    = ab(2);
gpdf = @(x) x.^(a-1)/(b^a*gamma(a)).*exp(-x/b);
% Plot the fitted pdf and the data
x    = 0:0.01:2;

plot(x,gpdf(x),'-g',data,gpdf(data),'*r',x,gamcdf(x,a,b),'--blue')
xx=xlabel('Adjusted Rand Index')
xx.FontSize = 20;
yy=ylabel('Density/Probability')
yy.FontSize = 20;
lgd=legend('Theoretical pdf','Data','Theoretical cdf')
lgd.FontSize = 20;