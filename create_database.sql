/* Creat and name database */
CREATE DATABASE nyc_taxi;
USE nyc_taxi;

/* create table for dataset */
CREATE TABLE taxi_trips (
    medallion VARCHAR(64),
    hack_license VARCHAR(64),
    pickup_datetime DATETIME,
    dropoff_datetime DATETIME,
    trip_time_secs INT,
    trip_distance FLOAT,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    payment_type VARCHAR(10),
    fare_amount FLOAT,
    surcharge FLOAT,
    mta_tax FLOAT,
    tip_amount FLOAT,
    tolls_amount FLOAT,
    total_amount FLOAT
);



