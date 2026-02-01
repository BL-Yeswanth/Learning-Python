import json

data = {
    "name": "Alice",
    "age": 25,
    "skills": ["Python", "SQL"]
}

with open("data.json", "w") as file:
    content = json.dump(data, file, indent=4)