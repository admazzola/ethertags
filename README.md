
## Ethertags

The Ethertags System is a Smart Contract databank.  This is a global worldwide dataset on the Ethereum Blockchain that allows any ethereum account to 'tag' another ethereum account with custom badges. These badges, or tags, have a TagTypeId and up to 1KB of TagData.  Giving out these badges is free and only costs the fee of the Ethereum 'gas'.  The functions available are as follows:  

1. giveTag(_tagged_acct_addr, _tag_type_id, _tag_data)
  Sets a flag to the target account that contains the tag_data.  This will cost a small 'gas' fee unless a matching 'tag request' exists that contains escrows funds.  (This can be done using requestTag)

2. requestTag(_tagger_acct_addr, _tag_type_id, _fee_escrow_amt)
  Sets a flag on your account that you want a service to tag you.  This also allows you to add a small amount of ether to escrow so that the giver will be able to tag you at absolutely no cost to them; any fee they paid would be refunded.




## Data Sizes

_tag_type_id is one byte, a number from 0 to 255 which is represented in hex (0x0 to 0xFF)
_tag_data is up to 1KB of data and it can represent any string (typically in UTF-8), any integer, or any other arbitrary data.


### Officially recognized Ethertag Types

0x0 {NONE}
  A blank tag type.  Can be used for anything and data can still be appended to this tag type.

0x1 TRUSTWORTHY
  A simple tag for expressing that you believe another account is trustworthy.  The Official Ethertag Browser will assign TrustRatings to accounts based on the quantity an quality of trustworthy tags.  Typically uses no tag data.

0x2 SAME_OWNER
  Given two accounts A and B, if A tags account B with 'SAME_OWNER' and B tags account A with 'SAME_OWNER', that it shall be recognized that account A and B are owned by the same person. Typically uses no tag data.

0x3 ACCOUNT_DISABLE
    If given to your own account, then you have flagged your account as disabled and/or compromised.  Thus any other tags on this account should be ignored. Typically uses no tag data.

0x4 EMAIL_ADDRESS
    If given to an account (typically from the official email provider) then that means that the ethereum account owner is also the owner of that email address.  Typically uses the 1KB of 'data' on this tag to embed the email address.  Example tag data: 'user@domain.com'

0x5 to 0x1F - RESERVED

Any other Tag Type Id that is between 0x10 and 0xFF (including those two) is a custom tag type id.  It could mean anything, depending on what the service wants to recognize it as.  These standards are not embedded into the smart contract.  


## Ethertag Data
 All ethertags can contain 1KB of arbitrary data.  Use your imagination as to what this might be used for!


## Getting Started
1. npm install -g truffle
2. npm install -g ethereumjs-testrpc
3. Then run 'testrpc' in a new tab to start an ethereum testnet




## Truffle Commands

Commands:

  Compile: truffle compile
  Migrate: truffle migrate
  Test:    truffle test
