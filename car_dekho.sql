create database cars;
use cars;
-- READ DATA--
select * from car_dekho;
-- Total Cars : To get a count of total records--
select count(*) from car_dekho;
-- The manager asked the employee How many cars will available in 2023--
select  count(*) from car_dekho where year = 2023;
-- The manager asked the employee How many cars is available in 2020,2021,2022--
select count(*) from car_dekho where year in (2020,2021,2022);
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- client asked me to print the total of all cars by year. I don't see all the details.--
select year, count(*) from car_dekho group by year;
-- Client asked to car dealer how many diesel cars will be there in 2020?--
select count(*) from car_dekho where seller_type = "Dealer" and fuel = "Diesel" and year = 2020;
-- how many diesel cars will be there in 2020?--
select count(*) from car_dekho where fuel = "Diesel" and year = 2020;
-- Client requested a car dealer agent How many petrol cars will be there in 2020--
select count(*) from car_dekho where seller_type = "Dealer" and fuel = "petrol" and year = 2020;
-- The Manager told the employee to give a print all the fuel cars(petrol,diesel and CNG ) come by year.--
select year,count(*) as count_per_year from car_dekho where fuel in ("petrol","diesel","cng") group by year;
select year,fuel,count(*) as count_per_year from car_dekho where fuel in ("petrol","diesel","cng") group by year, fuel;
-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year,count(*) from car_dekho group by year having count(*) >100;
-- The manager said to the employee all cars count details between 2015 and 2023.--
select count(*) from car_dekho where year between 2015 and 2023;
-- The manager said to the emploee all cars details between 2015 and 2023 we need complete list.--
select * from car_dekho where year between 2015 and 2023;

-- end--
