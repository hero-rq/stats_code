%% Part (a): Finding the Standard Deviation
% X is the weight of coffee jars in gram
% X ~ N(100.5, o)
% p(X<100) = 0.03;
% Given values
mean_weight_a = 100.5; 
rejection_probability_a = 0.03;
cutoff_weight_a = 100; 

% Find the z-score corresponding to the bottom 3% of the normal distribution
z_score_rejection_a = norminv(rejection_probability_a);

% Solve for the standard deviation
std_dev_a = (cutoff_weight_a - mean_weight_a) / z_score_rejection_a;

%% Part (b): Proportion of Jars Weighing Between 100g and 100.8g
% Given values
upper_limit_weight_b = 100.8; 

% Calculate the z-scores for 100g and 100.8g
z_score_lower_b = (cutoff_weight_a - mean_weight_a) / std_dev_a;
z_score_upper_b = (upper_limit_weight_b - mean_weight_a) / std_dev_a;

% Proportion of jars weighing between 100g and 100.8g
proportion_between_b = normcdf(z_score_upper_b) - normcdf(z_score_lower_b);
% proportion_between_b = normspec([100, 100.8], mean_weight_a, std_dev_a); 

%% Part (c): find the probability for the avergage of 5 random picks between 100g and 100.8g
% P(100<mean(X5)<100.8)
% Given values
mean_weight_a = 100.5; 
std_dev_b = std_dev_a / sqrt(5); 

% getting the proportion for five picks between 100g and 100.8g 
proportion_between_five = normcdf(100.8, mean_weight_a, std_dev_b) - normcdf(100, mean_weight_a, std_dev_b); 

%% Part (d): Adjusting the Mean Value
% Given values
cutoff_weight_d = 100; 
top_99_percentile_d = 0.99;

% Find the z-score for the top 99%
z_score_99_percentile_d = norminv(top_99_percentile_d);

% Calculate the new mean for part (d)
new_mean_d = cutoff_weight_d + (z_score_99_percentile_d * std_dev_a);
% The mean value should be set above new_mean_d 
%% Part (e): Adjusting the Mean Value
% Given values
% mean_weight_a = 100.5; 
cutoff_weight_d = 100; 
top_99_percentile_d = 0.99;

% Find the z-score for the top 99%
z_score_99_percentile_d = norminv(top_99_percentile_d);

% Calculate the new dev for part (e)
new_dev_d = (cutoff_weight_d - mean_weight_a) / z_score_99_percentile_d;
