pragma solidity ^0.4.4;

//import "./ConvertLib.sol";

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract EtherTags {

	struct Tag  {
			 //a tag list is the list of all tags on an account X given by account Y
				address sender;
				address receiver;
				uint tagTypeId;

				bytes32 data; //could be a hash of the actual data or data itself.
	}



	 uint public nextTagIndexToAssign = 0;
	 mapping (uint => Tag) public tags;


	//event Transfer(address indexed _from, address indexed _to, uint256 _value);
	event tagAssignment(address indexed _to, address indexed _from, uint _tag_type_id, bytes32 _tag_data);
	event tagRequest(address indexed _to, address indexed _from, uint256 _escrow_amt);

	function EtherTags() {


			 bytes32 init_test_data = bytes32(keccak256("helloworld"));

				giveTag(tx.origin,0x1,init_test_data);

				//balances[tx.origin] = 10000;  init stuff
	}

	function giveTag(address _receiver, uint _tag_type_id, bytes32 _tag_data) returns(bool sufficient) {

		nextTagIndexToAssign++;
		tags[nextTagIndexToAssign] = Tag({sender:msg.sender, receiver:_receiver, tagTypeId:_tag_type_id, data:_tag_data  });
		tagAssignment(_receiver, msg.sender, _tag_type_id, _tag_data);

		return true;
	}

	function getTag(uint index)  returns (address,address,uint,bytes32) {
				return (tags[index].sender, tags[index].receiver,tags[index].tagTypeId,tags[index].data);
		}

		function getTagTypeId(uint index)  returns (uint) {
					return (tags[index].tagTypeId);
			}

/*
	function getTag(uint index) public constant returns (address,address,uint,bytes32) {
        return (tags[index].sender, tags[index].receiver,tags[index].tagTypeId,tags[index].data);
    }
*/

}
