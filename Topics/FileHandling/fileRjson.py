import json

with open("data.json", "r") as file:
    data = json.load(file)
    
print(data["skills"])



# Convert JSON to String
# json_string = json.dumps(data)

# Convert String to JSON
# python_data = json.loads(json_string)
