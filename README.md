
## Ethertags

The Ethertags Framework allows any ethereum account to 'tag' another ethereum account with custom badges.  Giving out these badges is free and only costs the fee of the Ethereum 'gas'.  The functions available are as follows.  

1. giveTag(_tagged_acct_addr, _tag_data)
  Sets a flag to the target account that contains the tag_data.  This will cost a small 'gas' fee unless a matching 'tag request' exists that contains escrows funds.  (This can be done using requestTag)

2. requestTag(_tagger_acct_addr, _tag_data, _fee_escrow_amt)
  Sets a flag on your account that you want a service to tag you.  This also allows you to add a small amount of ether to escrow so that the service will be able to tag you at no cost.

3.

It is possible to tag your own account and in some instances it is encouraged to do so.  

### Officially recognized Ethertags

1. TRUSTWORTHY
  A simple tag for expressing that you believe another account is trustworthy.  The Official Ethertag Browser will assign TrustRatings to accounts based on the quantity an quality of trustworthy tags.  


2. ACCOUNT_DISABLE
  If given to your own account, you have then flagged your account as disabled and/or compromised



## Getting Started

1. npm install -g ethereumjs-testrpc
2. Then run 'testrpc' in a new tab to start an ethereum testnet




## Truffle Commands

Commands:

  Compile: truffle compile
  Migrate: truffle migrate
  Test:    truffle test
