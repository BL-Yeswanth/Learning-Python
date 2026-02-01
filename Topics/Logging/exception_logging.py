import logging

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s"
)

def divide(a, b):
    try:
        return a / b
    except Exception:
        logging.exception("Error occurred while dividing")
        return None

divide(10, 2)
divide(10, 0)
