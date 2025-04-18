# Subway Ridership and NYC's Congestion Relief Zone - Preliminary Steps #

## 👾 **Data**
  - https://mega.nz/folder/S8o3iDQY#LB5H6vnRPKadVrwmf51e6g includes CSV files from the sources below.
  - [Source for 2025](https://catalog.data.gov/dataset/mta-subway-hourly-ridership-beginning-2025)
  - [Source for 2024](https://data.ny.gov/Transportation/MTA-Subway-Hourly-Ridership-2020-2024/wujg-7c2s/about_data)
  - Note: This is *raw* data, and it includes information about the station (ID and conventional name), transit date and time, lat/long coordinates, and ridership and transfer numbers. These datasets were used in [Data-Preprocessing.ipynb](./Data-Preprocessing.ipynb), which documents how this data was managed and prepared for further cleaning.
  - The CSV files containing "_w_dummy" were created in ArcGIS Pro in order to attribute whether or not the station was inside the congestion zone. Further steps are provided below.
 
## 🗺️ **ArcGIS Pro Documentation**
  - An [NYC roads layer](./data/tl_2023_36061_roads.shp) from [census.gov's](https://catalog.data.gov/dataset/tiger-line-shapefile-2023-state-new-york-primary-and-secondary-roads) TIGER/Line collection was loaded to set context of NYC and serve as a foundation for the map.
  - The projection for this data was NAD83(2011) / New York Long Island (ft).
  - Both `Manhattan_Subway_Ridership_2024.csv` and `Manhattan_Subway_Ridership_2025.csv` were loaded into ArcGIS Pro using the `XY Table to Point` tool.
  - A new layer called `Traffic Congestion Zone` was drawn to reflect Manhattan's current congestion relief area.
  - A new field called `inside_zone` was added to both attribute tables, using the `Select by Location` tool to fill in 1's or 0's if the station was inside the zone.
  - Both tables were exported for final revisions in [Data-Postprocessing.ipynb](./Data-Postprocessing.ipynb)

<img src=https://github.com/vaughnmitchell13/econ308-proj/blob/main/Layout.png width=800px>


