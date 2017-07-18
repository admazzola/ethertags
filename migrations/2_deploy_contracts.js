 
var EtherTags = artifacts.require("./EtherTags.sol");

module.exports = function(deployer) {
  //deployer.deploy(ConvertLib);
//  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(EtherTags);
};
