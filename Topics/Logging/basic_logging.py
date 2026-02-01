import logging

logging.basicConfig(
    filename="calc.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s"
)

def divide(a, b):
    logging.info("divide called with %s and %s", a, b)
    if b == 0:
        logging.error("Division by zero")
        return None
    return a / b

divide(10, 2)
divide(10, 0)
