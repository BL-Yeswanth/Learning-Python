class TestRide:
    def __init__(self, distance, start_time):
        self.distance = distance
        self.start_time = start_time
    def calculate_fare(self):
        base = 50
        per_km = 12
        fare_cap = 1000

        hour = self.start_time
        fare = base + (self.distance * per_km)
        
        if (8 <= hour < 10) or (18 <= hour < 21):
            fare *= 1.5
            
        if hour >= 23 or hour < 5:
            fare += 100
            
        fare = min(fare, fare_cap)
        
        return fare

    TestRide = TestRide(10, "09:30")
    print(TestRide.calculate_fare())