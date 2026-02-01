# test_app.py

import pytest
from app import add, subtract, divide

def test_add(numbers):
    a, b = numbers
    assert add(a, b) == 15

def test_subtract():
    result = subtract(5, 2)
    assert result == 3

def test_divide():
    result = divide(10, 2)
    assert result == 5

@pytest.mark.parametrize("a, b", [
    (10, 0),
    (5,0)
])
def test_divide_by_zero(a, b):
    with pytest.raises(ValueError):
        divide(a, b)
        
        
@pytest.mark.parametrize("value", [1, 5, 10])
def test_add_with_base_number(value, base_number):
    assert base_number + value > base_number
    
    
