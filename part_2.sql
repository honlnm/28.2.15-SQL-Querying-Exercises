-- Complete the following code SQL challenges on Codewars:

-- [SQL Basics: Simple WHERE and ORDER BY](https://www.codewars.com/kata/sql-basics-simple-where-and-order-by/train/sql)

SELECT * FROM people 
  WHERE age > 50
  ORDER BY age DESC;


-- [SQL Basics: Simple SUM](https://www.codewars.com/kata/sql-basics-simple-sum)

SELECT SUM(age) AS age_sum FROM people;

-- [SQL Basics: Simple MIN / MAX](https://www.codewars.com/kata/sql-basics-simple-min-slash-max/train/sql)

SELECT MIN(age) AS age_min, MAX(age) AS age_max FROM people;

-- [Find all active students](https://www.codewars.com/kata/1-find-all-active-students/train/sql)

SELECT * FROM students
  WHERE IsActive = 1;

-- [SQL Basics: Simple GROUP BY](https://www.codewars.com/kata/sql-basics-simple-group-by/train/sql)

SELECT age, COUNT(id) AS people_count FROM people
  GROUP BY age;

-- [SQL Basics: Simple HAVING](https://www.codewars.com/kata/sql-basics-simple-having/train/sql)

SELECT age, COUNT(id) as total_people FROM people
  GROUP BY age
  HAVING COUNT(id) >= 10;

-- Then, complete tutorial 5 (SUM_and_COUNT) on [SQL Zoo.](https://sqlzoo.net/)

-- Show the total population of the world.

-- world(name, continent, area, population, gdp)

SELECT SUM(population) FROM world;

-- List all the continents - just once each.

SELECT DISTINCT(continent) FROM world;

-- Give the total GDP of Africa

SELECT SUM(gdp) FROM world
    WHERE continent = 'Africa';

-- How many countries have an area of at least 1000000

SELECT COUNT(name) FROM world
    WHERE area >= 1000000;

-- What is the total population of ('Estonia', 'Latvia', 'Lithuania')

SELECT SUM(population) FROM world
    WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

-- For each continent show the continent and number of countries.

SELECT continent, COUNT(name) FROM world
    GROUP BY continent;

-- For each continent show the continent and number of countries with populations of at least 10 million.

SELECT continent, COUNT(name) FROM world
    WHERE population >= 10000000
    GROUP BY continent;

-- List the continents that have a total population of at least 100 million.

SELECT continent FROM world
    GROUP BY continent
    HAVING SUM(population) >= 100000000;