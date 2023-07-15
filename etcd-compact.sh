#!/bin/bash
rev=$(ETCDCTL_API=3 etcdctl --endpoints=192.168.78.14:2379 endpoint status --write-out="json" | egrep -o '"revision":[0-9]*' | egrep -o '[0-9].*')
ETCDCTL_API=3 etcdctl --endpoints=192.168.78.14:2379 compact $rev
ETCDCTL_API=3 etcdctl --endpoints=192.168.78.14:2379 defrag
ETCDCTL_API=3 etcdctl --endpoints=192.168.78.14:2379 alarm disarm

