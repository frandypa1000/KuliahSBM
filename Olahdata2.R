# Load necessary library
library(dplyr)

# Lakukan perubahan kode untuk mencoba commit changes

# Read the CSV data
data <- read.csv("/Users/frandypasaribu/Downloads/Air_Traffic_Passenger_Statistics.csv")

# Summarize total passenger count by airline
top_airlines <- data %>%
  group_by(Operating.Airline) %>%
  summarise(Total_Passenger_Count = sum(Passenger.Count, na.rm = TRUE)) %>%
  arrange(desc(Total_Passenger_Count)) %>%
  slice_head(n = 10)

# Display the top airlines
print(top_airlines)
