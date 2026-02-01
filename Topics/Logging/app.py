import logging
from service import divide
from service2 import div

logging.basicConfig(
    level=logging.INFO,
    format="%(levelname)s - %(name)s - %(message)s"
)

divide(10, 2)
divide(10, 0)
div(5, 0)