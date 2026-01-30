library(nycflights13)
library(tidyverse)

# Mastery Audit: Efficiency by Carrier
efficiency_audit <- flights |> 
  # 1. Integrity Filter: Remove rows with missing delay or air_time data
  filter(!is.na(dep_delay), !is.na(arr_delay), !is.na(air_time)) |> 
  
  # 2. Transformation: Calculate 'gain' (time recovered in air)
  mutate(
    gain = dep_delay - arr_delay,
    hours = air_time / 60,
    gain_per_hour = gain / hours
  ) |> 
  
  # 3. Aggregation: Summarize performance by carrier
  group_by(carrier) |> 
  summarize(
    avg_gain = mean(gain),
    total_flights = n(),
    .groups = "drop"
  ) |> 
  
  # 4. Refinement: Sort by the most efficient 'recoverers'
  arrange(desc(avg_gain))

# Export the mastery artifact
write_csv(efficiency_audit, "ch3_data_transformation/top_carrier_efficiency.csv")