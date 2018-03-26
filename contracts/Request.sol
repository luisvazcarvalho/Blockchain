pragma solidity ^0.4.2;

contract Request {

	mapping(uint => Proposal) internal individualProposal;
	uint countOfIndividualProposals = 0;

	struct Proposal {
		address buyer;
		uint product;
		uint quantity;
		uint unitaryPrice;
	}

	function makeRequest(uint _product, uint _quantity, uint _unitaryPrice) public payable returns (uint) {

		// cria a proposta individual
		individualProposal[countOfIndividualProposals] = Proposal({
			buyer: msg.sender,
			product: _product,
			quantity: _quantity,
			unitaryPrice: _unitaryPrice
			});


		countOfIndividualProposals++;

		return countOfIndividualProposals;
	}
}