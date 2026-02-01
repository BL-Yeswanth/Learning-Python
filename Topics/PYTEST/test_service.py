from service import process_data, double, process
import pytest

def test_process_data(monkeypatch):
    
    def fake_get_data():
        return "FAKE DATA"

    monkeypatch.setattr("service.get_data", fake_get_data)

    result = process_data()
    assert result == "fake data"



def test_double(monkeypatch):

    def fake_get_number():
        return 5

    monkeypatch.setattr("service.get_number", fake_get_number)

    assert double() == 10
    
    
def test_error(monkeypatch):

    def fake_fetch():
        raise Exception("Fake error")

    monkeypatch.setattr("service.fetch", fake_fetch)

    with pytest.raises(Exception):
        process()

