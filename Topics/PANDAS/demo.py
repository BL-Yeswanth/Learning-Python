class Ride:
    def __init__(self, distance, start_time):
        self.distance = distance
        self.start_time = start_time  # format: "HH:MM"

    def calculate_fare(self):
        base_fare = 50
        per_km_rate = 12
        fare_cap = 1000

        # Extract hour from time
        hour = int(self.start_time.split(":")[0])

        # Base fare calculation
        fare = base_fare + (self.distance * per_km_rate)

        # Peak hours: 8–10 AM, 6–9 PM
        if (8 <= hour < 10) or (18 <= hour < 21):
            fare *= 1.5

        # Night hours: 11 PM – 5 AM
        if hour >= 23 or hour < 5:
            fare += 100

        # Apply fare cap
        fare = min(fare, fare_cap)

        return round(fare, 2)
