# Breast Cancer Coimbra Dataset Analysis

## Overview
This repository contains MATLAB code for analyzing the **Breast Cancer Coimbra Dataset** from the UCI Machine Learning Repository. The project is divided into two parts, focusing on the graphical display of data, computation of statistics, and visualization of results.

## Dataset Information
- **Dataset**: [Breast Cancer Coimbra Data Set](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Coimbra)
- **Number of Attributes**: 10
- **Number of Instances**: 116
- **Number of Classes**: 2 (1 = Healthy controls, 2 = Patients)

## Project Structure

### Part 1: Descriptive Statistics and Basic Visualizations
1. **Display dataset details** (attribute names, number of samples, and the first five records).
2. **Calculate and display** the **mean vector** and **standard deviation vector**.
3. Plot **histograms** for **BMI** and **Adiponectin**.
4. Generate **box plots** for all numeric variables (before and after normalization).
5. Normalize the numeric variables for better comparison across attributes.

### Part 2: Advanced Visualizations
1. Generate a **2D scatter plot** for **BMI vs Glucose**, grouped by class labels.
2. Create a **scatter plot matrix** with at least four features.
3. Generate a **3D scatter plot** for **BMI, Glucose, and Insulin**.
4. Display **parallel coordinates** for more than 50 samples grouped by class labels.
5. Plot the **mean vectors** for each class with custom feature labels.

## How to Run
1. Clone the repository:
    ```bash
    git clone https://github.com/iam-stark/Machine-Learning/breast_cancer_coimbra_analysis.git
    ```
2. Open MATLAB and navigate to the folder containing the analysis files.
3. Run the corresponding MATLAB scripts for each part:
    - For Part 1:
        ```matlab
        run('analysis1.m')
        ```
    - For Part 2:
        ```matlab
        run('analysis2.m')
        ```

## Files Included
- **analysis1.m**: MATLAB script for Part 1 of the analysis.
- **analysis2.m**: MATLAB script for Part 2 of the analysis.
- **dataR2.csv**: Breast Cancer Coimbra Dataset.
- **UCI Machine Learning Repository_ Breast Cancer Coimbra Data Set.pdf**: Original dataset source description from the UCI repository.
- **analysis1.pdf**: Output and results from Part 1.
- **analysis2.pdf**: Output and results from Part 2.

## Features
- **Part 1**: Summary statistics, histograms, and box plots before and after normalization.
- **Part 2**: 2D scatter plots, scatter plot matrices, 3D scatter plots, parallel coordinates, and mean vectors for each class.

## Results
- **Part 1**: Displays summary statistics and visualizes the distribution of attributes using histograms and box plots.
- **Part 2**: Provides advanced visualizations like scatter plots and parallel coordinates, with class separation.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Citation
If using this dataset, please cite:
Patrício, M., Pereira, J., Crisóstomo, J., Matafome, P., Gomes, M., Seiça, R., & Caramelo, F. (2018). Using Resistin, glucose, age and BMI to predict the presence of breast cancer. BMC Cancer, 18(1). doi:10.1186/s12885-017-3877-1