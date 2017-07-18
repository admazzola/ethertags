pragma solidity ^0.4.4;

//import "./ConvertLib.sol";

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract EtherTags {


	struct Tag {
     uint[] tagData;
   }


	 struct TagList {
	     // uint8 tagTypeId;

		mapping (uint8 => Tag) tags;
	 }

	 mapping (address => TagList) tagList;



	//event Transfer(address indexed _from, address indexed _to, uint256 _value);
	event tagAssignment(address indexed _from, address indexed _to, uint8 _tag_type_id, uint[] _tag_data);
	event tagRequest(address indexed _from, address indexed _to, uint256 _escrow_amt);

	function EtherTags() {

		/*
		init_test_data = uint[]
		init_test_data.push(2)
		tags[tx.origin] = Tag({tagTypeId: 1, tagData: init_test_data})

		*/


		//balances[tx.origin] = 10000;  init stuff
	}

	/*

	function giveTag(address receiver, uint8 tag_type_id, uint[] tag_data) returns(bool sufficient) {


		//if (balances[msg.sender] < amount) return false;
		//balances[msg.sender] -= amount;
		//balances[receiver] += amount;
		//Transfer(msg.sender, receiver, amount);
		//return true;


		existing_tags = tagList[msg.sender]

		//--actually push the tag
		//existing_tags.tags[ ].push

		//tagList[msg.sender] = amount;

		tagAssignment(msg.sender, receiver, tag_type_id, tag_data);
		return true;

	}


*/

	function requestTag(address addr) returns(uint){
		return 1;
	}

	function getTagData(address addr, uint8 tag_type_id) returns(uint) {
		return getTagDataList(addr).tags[tag_type_id];
	}

	function getTagDataList(address addr) returns(TagList) {
		return tagList[addr];
	}




}
