%% Aayam Shrestha
%% Assignment 1: Using Breast Cancer Data Set
%% Load Dataset

table = readtable("dataR2.csv");

%% Display details of the dataset such as attribute names, number of samples

summary(table);

%% Display first five records of the table

disp(table(1:5, :));

%% Getting numeric values from the table

tablenum = table2array(table(:, 1:end-1)); %classification is excluded since it is categorical value

%displaying first five records of numeric values
disp(tablenum(1:5, :));
%% Display mean and standard deviation vector

mean_vector = mean(tablenum);
disp(mean_vector)
std_vector = std(tablenum);
disp(std_vector)

%% Display histogram of at least one attributes

% histogram of BMI

figure;
histogram(tablenum(:,2));

xlabel(table.Properties.VariableNames{2})
ylabel('Frequency')
title(['Histogram of ', table.Properties.VariableNames{2}]);

% histogram of Adiponectin

figure;
histogram(tablenum(:,7));

xlabel(table.Properties.VariableNames{7})
ylabel('Frequency')
title(['Histogram of ', table.Properties.VariableNames{7}]);

%% Display the box plot

figure;
boxplot(tablenum,'Labels', table.Properties.VariableNames(1:end-1));
title('Box Plot before normalization')

%% The boxplot shows that the variables have different scale. Let's normalize the data to have better comparison across attributes

% Find minimum and maximum values for each attribute
tab_min = min(tablenum);
tab_max = max(tablenum);

% Compute the range for each attribute
temp = tab_max - tab_min;

% Initialize the normalized feature matrix
n_tab = zeros(size(tablenum));

% Perform min-max normalization for each attribute
for i = 1 : size(tablenum, 2)
    n_tab(:, i) = (tablenum(:, i) - tab_min(i)) ./ temp(i);
end

% tablenum = normalize(tablenum);
% % tablenum = (tablenum-mean_vector)./std_vector;
% 
figure;
boxplot(n_tab, 'Labels', table.Properties.VariableNames(1:end-1));
title('Box Plot after normalization');

%displaying first five records of normalized numeric values
disp(n_tab(1:5, :));