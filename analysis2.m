%% Using Breast Cancer Data Set -II
%% Load Dataset

table = readtable("dataR2.csv");
disp(table(1:5, :));
%% Getting numeric values from the table

tablenum = table2array(table(:, 1:end-1)); %classification is excluded since it is categorical value

%displaying first five records of numeric values
disp(tablenum(1:5, :));

% Find minimum and maximum values for each attribute
tab_min = min(tablenum);
tab_max = max(tablenum);

% Compute the range for each attribute
temp = tab_max - tab_min;

% Initialize the normalized feature matrix
n_tab = zeros(size(tablenum));

% Perform min-max normalization for each attribute
for i = 1 : size(tablenum, 2)
    n_tab(:, i) = 10*((tablenum(:, i) - tab_min(i)) ./ temp(i));
end


%% 2D Scatter Plot

figure;
gscatter(table.BMI, table.Glucose, table.Classification);
xlabel('BMI');
ylabel('Glucose');
title('2D Scatter Plot of BMI vs Glucose');
grid on;

%% Matrix of Scatter Plots (at least four features)

selected_features = n_tab(:, 1:4);  % First four features

% Generate a matrix of scatter plots
figure;
plotmatrix(selected_features);
title('Scatter Plot Matrix for Four Features');


%% 3D Scatter Plot

figure;
scatter3(n_tab(:, 2), n_tab(:, 3), n_tab(:, 4), 'filled');  % BMI, Glucose, and Insulin
xlabel('BMI');
ylabel('Glucose');
zlabel('Insulin');
title('3D Scatter Plot of BMI, Glucose, and Insulin');
grid on;

%% Parallel Coordinates

%% only displaying 55 samples to get a clear view

p_tab = n_tab(1:55, :);
species = table.Classification(1:55,:);
labels = {'Age', 'BMI', 'Glucose', 'Insulin', 'HOMA', 'Leptin', 'Adiponectin', 'Resistin', 'MCP.1'};
parallelcoords(p_tab, 'Group', species, 'Labels', labels);

%% Mean Vectors

% Separate data by class using 'table.Classification' for labels
class1 = n_tab(table.Classification == 1, :);  % Class 1 data
class2 = n_tab(table.Classification == 2, :);  % Class 2 data

% Finding mean vectors for each class
mclass1 = mean(class1, 1);  % Mean vector for class 1
mclass2 = mean(class2, 1);  % Mean vector for class 2

% Plot the mean vectors for each class
figure;
plot(mclass1, '-o', 'DisplayName', 'Class 1 Mean'); hold on;
plot(mclass2, '-s', 'DisplayName', 'Class 2 Mean'); hold off;

% Define your custom labels for the x-axis
labels = {'Age', 'BMI', 'Glucose', 'Insulin', 'HOMA', 'Leptin', 'Adiponectin', 'Resistin', 'MCP.1'};

% Set x-axis ticks and labels
xticks(1:length(labels));  % Set the number of ticks to match the number of features
xticklabels(labels);  % Set the custom feature names as x-axis labels

% Add labels and title
xlabel('Features');
ylabel('Mean Values');
title('Mean Vectors for Each Class (Class 1 and Class 2)');
legend('Location', 'best');
grid on;