# Breast Cancer Coimbra Dataset Analysis

## Overview
This repository contains MATLAB code for analyzing the **Breast Cancer Coimbra Dataset** from the UCI Machine Learning Repository. The goal of this project is to graphically display data, compute statistics, and visualize the results of the dataset.

## Dataset Information
- **Dataset**: [Breast Cancer Coimbra Data Set](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Coimbra)
- **Number of Attributes**: 10
- **Number of Instances**: 116
- **Number of Classes**: 2 (1 = Healthy , 2 = Patients)

## Project Tasks
This project performs the following tasks:
1. Display details of the dataset such as attribute names, the number of samples, and the first five records.
2. Calculate and display the **mean vector** and **standard deviation vector**.
3. Plot histograms for at least one attribute.
4. Generate box plots for numeric variables.
5. Normalize the numeric variables and regenerate box plots for better comparison across attributes.

## How to Run
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/breast_cancer_coimbra_analysis.git
    ```
2. Open MATLAB and navigate to the folder containing the `analysis.m` file.
3. Run the MATLAB script:
    ```matlab
    run('analysis.m')
    ```

## Files Included
- **analysis.m**: MATLAB script that performs all the analysis required for the project.
- **dataR2.csv**: Breast Cancer Coimbra Dataset.
- **UCI Machine Learning Repository_ Breast Cancer Coimbra Data Set.pdf**: Original dataset source description from the UCI repository.
- **output.pdf**: Solution output including visualizations and analysis.

## Features
The script provides:
- **Summary statistics**: Attribute names, number of samples, first five records, mean vector, and standard deviation vector.
- **Data visualizations**:
  - Histogram for **BMI** and **Adiponectin**.
  - Box plots for all numeric variables (before and after normalization).

## Results
- Histograms for numeric variables display the distribution of values in the dataset.
- Box plots help in understanding the spread and outliers of each attribute.
- Normalization ensures that attributes are on a comparable scale for analysis.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Citation
If using this dataset, please cite:
[Patricio, 2018] Patrício, M., Pereira, J., Crisóstomo, J., Matafome, P., Gomes, M., Seiça, R., & Caramelo, F. (2018). Using Resistin, glucose, age and BMI to
predict the presence of breast cancer. BMC Cancer, 18(1). doi:10.1186/s12885-017-3877-1