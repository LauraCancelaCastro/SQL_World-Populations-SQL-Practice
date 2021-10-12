-- This is the first query:

SELECT DISTINCT year as DistinctYears from population_years;

-- Add your additional queries below:

-- 4. What is the largest population size for Gabon in this dataset?
SELECT max(population) as MaxPopulationGabon from population_years WHERE country IS "Gabon";

-- 5. What were the 10 lowest population countries in 2005?
SELECT DISTINCT country as TenLowestPopulations FROM population_years
ORDER BY population ASC  LIMIT 10;

-- 6. What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country as Population100m2010 from population_years WHERE population > 100.000000 AND year IS 2010;

-- 7. How many countries in this dataset have the word “Islands” in their name?
SELECT DISTINCT count(country) as Islands from population_years WHERE country LIKE "%Islands%";

-- 8. What is the difference in population between 2000 and 2010 in Indonesia? Note: it’s okay to figure out the difference by hand after pulling the correct data.
SELECT (ten.population - zero.population) as DifferenceIndonesia FROM population_years as zero JOIN population_years as ten ON(ten.country=zero.country)  WHERE ten."year" IS 2010 AND  zero."year" IS 2000 AND  ten.country LIKE "%Indonesia%";
