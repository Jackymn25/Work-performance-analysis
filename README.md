This project analyzes how **burnout, sleep, screen time, and work hours** are associated with **task completion rate** in a work-from-home setting.
For details, please view our report.

## Overview

Using a synthetic work-from-home employee burnout dataset, this project builds and compares several regression models to study which factors are most strongly related to daily task completion. The main goal is to identify an interpretable model and evaluate its assumptions through diagnostic analysis.

## Methods

The analysis includes:

- **Exploratory Data Analysis (EDA)**
  - summary statistics
  - boxplots
  - barplots
  - scatterplots

- **Multiple Linear Regression**
  - baseline linear model for task completion rate

- **Quadratic Regression**
  - added a quadratic term for burnout score to capture nonlinearity

- **Model Selection**
  - nested model comparison
  - partial F-tests
  - removal of weak predictors

- **Multicollinearity Diagnosis**
  - correlation analysis
  - variance inflation factor (VIF)

- **Model Diagnostics**
  - residuals vs fitted
  - normal Q-Q plots
  - standardized/studentized residual checks

- **Influence Analysis**
  - leverage
  - Cook’s distance
  - DFFITS
  - sensitivity analysis after removing influential observations

## Main Result

The final model shows that **burnout score is the dominant predictor** of task completion rate.  
A **quadratic burnout term** improves fit, suggesting the relationship between burnout and productivity is **nonlinear**.  
After accounting for burnout, **sleep hours, screen time, and work hours** contribute little additional explanatory power in this dataset.

## Requirements

Make sure the following are installed:

- R
- rmarkdown
- knitr
- LaTeX distribution with xelatex support

For example:

TinyTeX
TeX Live
MiKTeX
How to Run
Put data.csv in the same folder as reportInfo.Rmd.
Open the project in RStudio or another R environment.
Render the report with:
rmarkdown::render("reportInfo.Rmd")

This will generate the final PDF report.

## Data Input

The R Markdown file searches for the dataset in these locations:

data.csv
./data.csv
data/data.csv
../data.csv
/mnt/data/data.csv

If the file is not found, rendering will stop with an error.

## Output

The main output is a PDF report containing:

introduction and motivation
data description
preliminary regression results
model selection process
final model inference
discussion and conclusion

## Notes
The dataset used in this project is synthetic, so the results should be interpreted mainly as a statistical modeling exercise.
The project focuses on interpretability, model adequacy, and diagnostic reasoning rather than purely predictive performance.

## Authors
- Jingcheng Liang
- Dana Huang
- Haozhe Huo
