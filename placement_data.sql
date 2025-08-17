-- Total offers 
SELECT COUNT(*) AS total_offers
FROM placement_data;

-- Total offers of different types
SELECT `Offer type`, COUNT(*) AS total
FROM placement_data
GROUP BY `Offer type`;

-- Highest CTC
SELECT MAX(CTC) AS Highest_package
FROM placement_data;

-- Lowest CTC
SELECT MIN(CTC) AS Lowest_package
FROM placement_data;

-- Average CTC
SELECT AVG(CTC) AS Average_package
FROM placement_data;

-- Industry-wise packages
SELECT Industry, COUNT(*) AS total
FROM placement_data
GROUP BY Industry
ORDER BY total DESC;

-- Average Package By each Industry
SELECT Industry, ROUND(AVG(CTC), 2) AS avg_package
FROM placement_data
WHERE CTC IS NOT NULL
GROUP BY Industry
ORDER BY avg_package DESC;

-- Branch-Wise Average Package
SELECT Branch, ROUND(AVG(CTC), 2) AS avg_package
FROM placement_data
WHERE CTC IS NOT NULL
GROUP BY Branch
ORDER BY avg_package DESC;

-- Branch-wise Offers
SELECT Branch, COUNT(*) AS total
FROM placement_data
GROUP BY Branch
ORDER BY total DESC;

-- Top 5 Companies By Packages
SELECT DISTINCT Company, CTC AS total
FROM placement_data
ORDER BY CTC DESC 
LIMIT 5;

-- Top 5 Companies By Offers
SELECT Company, COUNT(*) AS total
FROM placement_data
GROUP BY Company
ORDER BY total DESC
LIMIT 5;


-- Gender Distribution
SELECT Gender, COUNT(*) AS total_students
FROM placement_data
GROUP BY Gender;

