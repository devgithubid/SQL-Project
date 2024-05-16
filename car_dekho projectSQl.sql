-- Read data--
select * from car_dekho;
-- Total cars : to get count of total record--
select count(*) from car_dekho;  #7927
-- The manager asked to employees how many cars available in 2023 -- 
select count(*) from car_dekho where year=2023 ; #6
-- The manager asked to employees how many cars available in 2020,2021,2022 -- 
-- group by--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- Client asked me to print the total of all cars group by the year. i dont see all the details--
 select year , count(*) from car_dekho group by year;
 -- Client asked to the car dealer how many diesel cars will be there 2020 --
 select count(*) from car_dekho where year=2020 and fuel="Diesel"; #20
  -- Client asked to the car dealer how many petrol cars will be ther 2020;
  select count(*) from car_dekho where year=2020 and fuel="Petrol"; #51
  -- The manager told the employee to give a print all the fuel cars (petrol, diesel, and cng) come by all year --
  select year,count(*) from car_dekho  where fuel="cng" group by year;