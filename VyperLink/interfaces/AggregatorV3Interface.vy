# @version ^0.2.0

@external
@view
def decimals() -> uint256:
    pass

@external
@view
def description() -> String[32]:
    pass

@external
@view
def version() -> uint256:
    pass
 
# getRoundData and latestRoundData should both raise "No data present"
# if they do not have data to report, instead of returning unset values
# which could be misinterpreted as actual reported values.

@external
@view
def getRoundData(_roundId:uint256) -> (uint256, int128, uint256, uint256, uint256):
    pass
  

@external
@view
def latestRoundData() -> (uint256, int128, uint256, uint256, uint256):
    pass
