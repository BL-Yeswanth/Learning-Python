import json

with open("employees.json", "r") as file:
    data = json.load(file)
    
for emp in data["employees"]:
    print(emp["name"], "-", emp["skills"])