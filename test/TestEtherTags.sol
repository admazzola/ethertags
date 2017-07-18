pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/EtherTags.sol";

contract TestEtherTags {

  function testInitialCreationDeployedContract() {
    EtherTags meta = EtherTags(DeployedAddresses.MetaCoin());

    //var first_tag = meta.getTag(1);

    Assert.equal(meta.nextTagIndexToAssign(), 1, "Initial tag should exist");


  }

/*  function testInitialBalanceWithNewMetaCoin() {
    MetaCoin meta = new MetaCoin();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 MetaCoin initially");
  }
*/
}
