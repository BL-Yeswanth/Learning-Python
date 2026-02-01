import logging

logger = logging.getLogger(__name__)

def divide(a, b):
    logger.info("divide called with %s and %s", a, b)

    if b == 0:
        logger.error("Division by zero")
        return None

    return a / b
