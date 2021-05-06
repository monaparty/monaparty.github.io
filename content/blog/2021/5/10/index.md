---
title: "Release train 2323232 on boarding"
date: 2021-05-05T01:37:48Z
---

> NOTE: Some features are postponed. Please read https://www.monaparty.me/blog/2021/5/11/ for more details.

Dear Monaparty funs,

The release train 2323232 is now on boarding.

The version of counterparty-lib is 9.5510.1.

# Key features

## "True" NFT assets

The new object `asset_group` is added.
And `fungible` flag is added to the issuance message.

`asset_group` is a similar to the child part of `asset_longname` and bound to assets issued with `not fungible` flag.

## ~~Trigger message~~

~~The new object `trigger` is added.~~

~~It is a generalized `cancel`. `trigger` message can contain `payload` binary in addition to `target_hash` (like `offer_hash` on `cancel` message).~~

~~This will be the important milestone for Monaparty Automation and smart contracts.~~

## Asset Metadata

The new object `asset_metadata` is added.

It works with `trigger` message.
`issuer` and `owner` can add key-value pairs to their assets.
They can also remove and lock key-value pairs.

This will be the important milestone for Monacard storage, PartyMusic, PartyDNS, and many kind of dApps.

## and more

Some bug fixes.

# Who missed this train

* Monaparty Automation
* PartyMusic
* PartyDNS
* Monacard storage
* Auction contract

# Conclusion

Have a fun to Monaparty!


## Note for node operators

It may cause exceptions on reparsing counterparty-testnet. We suppose this will be fixed by `fednode rollback`.