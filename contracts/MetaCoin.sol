pragma solidity ^0.4.4;

//import "./ConvertLib.sol";

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract EtherTags {


	struct Tag {
     uint8 tagTypeId;
     uint[] tagData;
   }

	mapping (address => Tag) tags;

	//event Transfer(address indexed _from, address indexed _to, uint256 _value);
	event tagAssignment(address indexed _from, address indexed _to, uint8 _tag_type_id, uint[] _tag_data);
	event tagRequest(address indexed _from, address indexed _to, uint256 _escrow_amt);

	function EtherTags() {
		//balances[tx.origin] = 10000;  init stuff
	}

	function giveTag(address receiver, uint8 tag_type_id, uint[] tag_data) returns(bool sufficient) {


		/*if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		Transfer(msg.sender, receiver, amount);
		return true;
		*/


		tagAssignment(msg.sender, receiver, tag_type_id, tag_data);
		return true;

	}

	/*function getBalanceInEth(address addr) returns(uint){
		return ConvertLib.convert(getBalance(addr),2);
	}

	function getBalance(address addr) returns(uint) {
		return balances[addr];
	}*/



	function requestTag(address addr) returns(uint){
		return ConvertLib.convert(getBalance(addr),2);
	}

	function getTagData(address addr) returns(uint) {
		return balances[addr];
	}

}
