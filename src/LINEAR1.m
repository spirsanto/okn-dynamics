DST_NUM = '1st';
if(BASIC_PLOT)
    f = figure();
    plot(T, X1);
    saveas(f, sprintf('assets/basic_plot_%s.png', DST_NUM));
    title(sprintf('%s time series', DST_NUM));
    xlabel('time-step');
    ylabel('eye-position');
end
% see if the signal has information
% if voids and non-voids exist inside it
% then there is information.
% plot(T, log(abs(X1) + eps));
% Y1 = log(abs(X1(2:end))) - log(abs(X1(1:LENGTH-1)));
% plot(T(1:end-1), Y1)

filterorder = 10;
% we tested 30, 20, 10, 5
% 10 is much more promising...
nsam = 5;
timesep = 5;
% get EXTREMA SERIES 
[AMA, AMI, AMD, TMA, TMI, TBP] = produce_time_series(X1, Ts, filterorder, nsam, timesep, EXTREMA_PLOT, EXTREMA_SERIES_PLOT, FIR, DST_NUM);

% all linear analysis for AMA
linear_analysis(AMA, 'AMA1', MAX_ORDER_AR, MAX_ORDER_MA, POLORDER, ...
                EXTREMA_PLOT, EXTREMA_SERIES_PLOT, REMOVES_TREND, ...
                REMOVES_TREND_PLOT, AUTOCORR_PLOT, AKAIKE, DST_NUM);
                
% all linear analysis for TMI
linear_analysis(TMI, 'TMI1', MAX_ORDER_AR, MAX_ORDER_MA, POLORDER, ...
                EXTREMA_PLOT, EXTREMA_SERIES_PLOT, REMOVES_TREND, ... 
                REMOVES_TREND_PLOT, AUTOCORR_PLOT, AKAIKE, DST_NUM);