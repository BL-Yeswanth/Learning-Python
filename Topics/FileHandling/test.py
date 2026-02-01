student = {
    "id": 101,
    "name": "John",
    "subjects": [
        {"name": "Math", "marks": 85},
        {"name": "Science", "marks": 90}
    ],
    "address": {
        "city": "New York",
        "zip": "10001"
    }
}

print(student["name"]) 
print(student["subjects"][0]["marks"])
print(student["address"]["city"])