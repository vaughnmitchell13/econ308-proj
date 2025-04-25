import delimited "PATH_TO_DATA/manhattan_subways.csv", clear 
gen did = inside_zone * in_2025
regress station_ridership inside_zone in_2025 did
