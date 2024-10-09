-- Total Cars: To get a count of total records---
select count(*) from car_dekho;

-- The manager asked the employee How many cars will be available in 2023 ?--
select count(*)  from car_dekho where year = 2023;

-- The manager asked the employee How many cars is available in 2020,2021,2022--
select count(*) from car_dekho where year in (2020,2021,2023) group by year;

-- clint asked me to print the total of all cars by year. i dont see all the details,---
select year, count(*) from car_dekho group by year; 

-- clint asked to car dealer How many diesel cars will there be in 2020 ?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";

-- clint requested to car dealer agent How many petrol cars will there be in 2020 ?--
select year, count(*) from car_dekho where year = 2020 and fuel = "petrol" group by year ;

-- The manager told the employee to give a print all the fuel cars (petrol,diesel,and CNG) all years
 select year, count(*)  from car_dekho where fuel = "Petrol" group by year;
  select year, count(*)  from car_dekho where fuel = "diesel" group by year;
  select year, count(*)  from car_dekho where fuel = "cng" group by year;

  -- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*) >100;
select year, count(*) from car_dekho group by year having count(*) <100;

-- the manager said to the employee all cars count details between 2015 and 2023; we need a complte list..--
select count(*) from car_dekho where year between 2015 and 2023;

-- the manager said to the employee all cars details between 2015 and 2023; we need a complte list..--
select * from car_dekho where year between 2015 and 2023;
