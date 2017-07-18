pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/EtherTags.sol";

contract TestEtherTags {

  function testInitialCreationDeployedContract() {
    EtherTags meta = EtherTags(DeployedAddresses.MetaCoin());

    uint expected = 0;

    Assert.equal(meta.getTagData(tx.origin,1), expected, "helll worldy");
  }

/*  function testInitialBalanceWithNewMetaCoin() {
    MetaCoin meta = new MetaCoin();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 MetaCoin initially");
  }
*/
}
