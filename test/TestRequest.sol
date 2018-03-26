pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Request.sol";

contract TestRequest {
  Request request = Request(DeployedAddresses.Request());

	function testMakeRequest() public {
		uint returnedId = request.makeRequest(1, 10, 100);

		uint expected = 1;

		Assert.equal(returnedId, expected, "Requested value is 1");
	}
	

}

