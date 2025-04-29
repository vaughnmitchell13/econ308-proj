import delimited "/manhattan_subways.csv", clear 
gen inter = inside_zone * in_2025
reg station_ridership inside_zone in_2025 inter
reg station_ridership inside_zone in_2025 inter, vce(cluster station_complex_id)
gen date_num = date(transit_date, "DMY")
replace date_num = date(transit_date, "MDY")
gen date_num = date(transit_date, "MDY")
format date_num %td
xtset station_complex_id date_num
xtreg station_ridership in_2025##inside_zone i.date_num, fe vce(cluster station_complex_id)
