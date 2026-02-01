def get_data():
    return "REAL DATA"

def process_data():
    data = get_data()
    return data.lower()


def get_number():
    return 10

def double():
    return get_number() * 2



def fetch():
    raise Exception("API down")

def process():
    return fetch()




