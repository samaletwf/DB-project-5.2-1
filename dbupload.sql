LOAD DATA INFILE '"C:\Users\aleks\Desktop\water-level_turbidity-high1.csv"'
INTO TABLE data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY ''
IGNORE 1 ROWS;

LOAD DATA INFILE '"C:\Users\aleks\Desktop\water-level_turbidity-medium1.csv"'
INTO TABLE data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY ''
IGNORE 1 ROWS;

LOAD DATA INFILE '"C:\Users\aleks\Desktop\water-level_turbidity-low1.csv"'
INTO TABLE data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY ''
IGNORE 1 ROWS;