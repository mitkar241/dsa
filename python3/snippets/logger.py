import logging  

# Create and configues the logger
logging.basicConfig(filename="logfile.log", format='%(asctime)s %(message)s', filemode='w')

# Creates logging object
logger = logging.getLogger()

# Sets the level of logging to DEBUG
logger.setLevel(logging.DEBUG)

logger.debug("Debug Message")
#2022-07-09 14:52:17,219 Debug Message

logger.info("Just an information")
#2022-07-09 14:52:17,219 Just an information

logger.warning("Its a Warning")
#2022-07-09 14:52:17,219 Its a Warning

logger.error("Records errors")
#2022-07-09 14:52:17,219 Records errors

logger.critical("Flags Fatal errors")
#2022-07-09 14:52:17,219 Flags Fatal errors
