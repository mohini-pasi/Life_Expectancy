# 📊 Life Expectancy Analysis

**Author:** Mohini Pasi  

---

## 🗂️ Project Overview

This project analyzes **global life expectancy data** from 193 countries between **2000–2015**, using **Machine Learning, Python, SQL, and Excel**.  
The aim is to understand how factors like **GDP, schooling, immunization, mortality rates, and healthcare spending** impact life expectancy.

---

## 🎯 Objectives

This project answers key questions:
- Do various factors significantly affect life expectancy?
- Should countries with lower life expectancy increase healthcare expenditure?
- How do infant and adult mortality rates affect lifespan?
- What is the relationship between life expectancy and lifestyle factors like alcohol consumption?
- What impact does schooling have on lifespan?
- Do densely populated countries tend to have lower life expectancy?
- What is the role of immunization coverage?

---

## 📌 Dataset Details

- **Source:** WHO (World Health Organization), United Nations
- **Countries:** 193
- **Years Covered:** 2000–2015
- **Rows:** ~2938
- **Columns:** 22

**Key Variables:**  
- `Life_Expectancy`
- `GDP`
- `Schooling`
- `Adult Mortality`
- `infant deaths`
- `Hepatitis B`
- `Polio`
- `Diphtheria`
- `Alcohol`
- `BMI`
- Population & Expenditure indicators

---

## ⚙️ Tools & Technologies Used

- **Languages:** Python (Pandas, Seaborn, Matplotlib, Sklearn, Statsmodels), SQL
- **IDE:** VS Code, Jupyter Notebook
- **Other:** Excel for data inspection

---

## 🔍 Methodology

1. **Data Cleaning:**  
   - Handled missing values using mean imputation.
   - Removed unreliable rows for countries with incomplete data.

2. **Exploratory Data Analysis (EDA):**  
   - Correlation heatmap
   - Scatter plots: GDP vs Life Expectancy, Schooling vs Life Expectancy
   - Statistical summary

3. **Modeling:**  
   - Multiple Linear Regression using **Sklearn** & **Statsmodels**
   - Train-test split
   - Model evaluation: R² Score, MAE, RMSE

4. **Insights & Recommendations:**  
   - Identified top factors influencing life expectancy.
   - Recommended areas for policy focus (immunization, schooling, GDP growth).

---

## 📈 Results

- **Key Finding:** Higher GDP, better schooling, and wider immunization coverage strongly correlate with increased life expectancy.
- **Model Accuracy:** Achieved satisfactory R² and low MAE/RMSE.
- **Practical Use:** Countries with low life expectancy can focus on healthcare spending and education improvements.

---

## ✅ Conclusion

This analysis demonstrates how **economic, health, and social factors** collectively impact life expectancy. The results can help policymakers identify key focus areas to improve public health outcomes.

---

## 📁 Files in this Repo

- `Life_Expectancy_Analysis.ipynb` — Jupyter notebook with all Python code.
- `Cleaned_Life_Expectancy.csv` — Final cleaned dataset.
- `README.md` — Project overview & instructions.
- `Results/` — Plots & output images for presentation.

---

## 📌 Author & Contact

**Mohini Pasi**   
[GitHub](https://github.com/mohini-pasi)

---

## 🙏 Acknowledgements

- **Data Sources:** World Health Organization (WHO), United Nations.
- Special thanks to mentors and Dcodetech for guidance.

---

**✨ Thank you for visiting my project!**
# Life_Expectancy
