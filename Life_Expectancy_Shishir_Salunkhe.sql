USE dcode;
SHOW COLUMNS FROM  cleaned_life_expectancy;

-- 1️⃣ Predicting variables affecting Life Expectancy
SELECT
  AVG(`Life_Expectancy`) AS avg_life,
  AVG(`Adult Mortality`) AS avg_adult_mortality,
  AVG(`infant deaths`) AS avg_infant_deaths,
  AVG(`Alcohol`) AS avg_alcohol,
  AVG(`BMI`) AS avg_bmi,
  AVG(`percentage expenditure`) AS avg_health_spending,
  AVG(`Schooling`) AS avg_schooling,
  AVG(`GDP`) AS avg_gdp
FROM cleaned_life_expectancy;


-- 2️⃣ Countries with Life Expectancy < 65 & Health Expenditure
SELECT
  Country,
  AVG(`Life expectancy`) AS avg_life,
  AVG(`Total expenditure`) AS avg_health_exp
FROM clean_data
GROUP BY Country
HAVING avg_life < 65
ORDER BY avg_health_exp DESC;

-- 3️⃣ Infant & Adult Mortality vs Life Expectancy
SELECT
  Country,
  AVG(`infant deaths`) AS avg_infant_deaths,
  AVG(`Adult Mortality`) AS avg_adult_mortality,
  AVG(`Life expectancy`) AS avg_life
FROM clean_data
GROUP BY Country
ORDER BY avg_life DESC;

-- 4️⃣ Life Expectancy vs Lifestyle Habits
SELECT
  AVG(`Alcohol`) AS avg_alcohol,
  AVG(`BMI`) AS avg_bmi,
  AVG(`Life expectancy`) AS avg_life
FROM clean_data;

-- 5️⃣ Impact of Schooling
SELECT
  FLOOR(`Schooling`) AS schooling_years,
  AVG(`Life expectancy`) AS avg_life
FROM clean_data
GROUP BY schooling_years
ORDER BY schooling_years DESC;

-- 6️⃣ Life Expectancy vs Alcohol Levels
SELECT
  CASE
    WHEN Alcohol < 2 THEN 'Low'
    WHEN Alcohol BETWEEN 2 AND 5 THEN 'Moderate'
    ELSE 'High'
  END AS Alcohol_Level,
  AVG(`Life expectancy`) AS avg_life
FROM clean_data
GROUP BY Alcohol_Level;

-- 7️⃣ Population Density & Life Expectancy
SELECT
  CASE
    WHEN Population < 1000000 THEN 'Low'
    WHEN Population BETWEEN 1000000 AND 10000000 THEN 'Medium'
    ELSE 'High'
  END AS PopDensity,
  AVG(`Life expectancy`) AS avg_life
FROM clean_data
GROUP BY PopDensity;

-- 8️⃣ Immunization Coverage Impact
SELECT
  FLOOR(`Polio`) AS Polio_Rate,
  AVG(`Life expectancy`) AS avg_life
FROM clean_data
GROUP BY Polio_Rate
ORDER BY Polio_Rate DESC;
