---
title: "How to upgrade Monaparty federated node."
date: 2020-10-03T06:26:43Z
---

Hello, Monaparty node administrators.

How about your happy Monapaty festa in autumn?

This article describes how to upgrade your federated node.


# Why special ?

"Node upgrade in fall, 2020" is a big upgrade.
So you must do some more tasks than usual.

# Step by Step

## Uninstall older version

```
fednode uninstall
```

Don't worry. Docker volumes is kept back.

## Switch your branch to `monaparty` and pull commits.

```
cd fednode/
git checkout monaparty
git pull
```

Finally federated node supports `monaparty` (means the stable master) branch.
I strongly recommend run your nodes with this branch.

Of course, you can keep using `monaparty-develop`. But it's a breeding edge.

## Check configuration

```
fednode configcheck
```

Brand-new `indexd-server` support is added in this upgrade.
So there will be some differences between your configuration and official's.

Please fix them.

You may use `for i in config/*/*.default; do cp $i $(dirname $i)/$(basename $i .default); done` if you see it.

## Install new nodes.

```
fednode install full master
```

In case you don't want to install Counterwallet, you can use `fednode install counterblock master`
 or `fednode install base master` instead.

## Update nodes.

```
fednode Update
```

In this version of fednode have some bugs.
So you must run update command.

In horrible, the update process is finished with an error like this.

```
Fatal error: Invalid checksum: src/vendors/bitcoinjs-lib/bitcoinjs.min.js
```

But. It's OK for now even if you might not believe me. Trust. 

## Just wait for 2 or 3 days.

The database will run full re-parse. It will required 2 or 3 days.

## extra: In case re-parse was stopped with inconsistency.

In some cases, re-parse may be stopped with the transaction inconsistency.

You can resolve this by deleting old databases.

Here is the step-by-step.

### Stop Counterparty servers

```
fednode stop counterparty
fednode stop counterparty-testnet
```

### Check the local path for the volume

```
docker volume inspect federatednode_counterparty-data
```

You will get result like this.

```
[
    {
        "CreatedAt": "2020-10-01T05:54:04Z",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/federatednode_counterparty-data/_data",
        "Name": "federatednode_counterparty-data",
        "Options": null,
        "Scope": "local"
    }
]
```

`"Mountpoint"` is the target.

### Remove database related files

```
sudo sh -c 'rm /var/lib/docker/volumes/federatednode_counterparty-data/_data/monaparty.db*'
```

The path should be arranged to fit your environment.

## Restart servers

```
fednode start counterparty
fednode start counterparty-testnet
```

## Pray

The latest database image may be downloaded if you are lucky. :-)

If you aren't, the full re-parse process may be run. ;-)
Please wait for 2 or 3 days.