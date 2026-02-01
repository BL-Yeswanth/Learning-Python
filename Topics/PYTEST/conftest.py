import pytest

@pytest.fixture
def numbers():
    return (10, 5)

@pytest.fixture
def base_number():
    return 10
