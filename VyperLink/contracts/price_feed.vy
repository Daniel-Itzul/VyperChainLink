# @version ^0.2.0
from interfaces import AggregatorV3Interface as AggregatorV3Interface

priceFeed: AggregatorV3Interface

@external
def __init__(_priceAgregator:address):
    self.priceFeed = AggregatorV3Interface(_priceAgregator)

#Returns the latest price

@external
@view
def getThePrice() -> (int128):
    roundID: uint256 = 0
    price: int128 = 0
    startedAt: uint256 = 0
    requestTimeStamp: uint256 = 0
    answeredInRound: uint256 = 0
    roundID, price, startedAt, requestTimeStamp, answeredInRound = self.priceFeed.latestRoundData()
    return  price
   