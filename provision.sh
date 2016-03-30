#!/bin/bash

set -euf

( cat <<'EOF'
[elasticsearch]
name=elasticsearch repo
baseurl=http://packages.elastic.co/elasticsearch/2.x/centos
enabled=1
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
EOF
) > /etc/yum.repos.d/elastic.repo


(cat<<'EOF'
[treasuredata]
name=TreasureData
baseurl=http://packages.treasuredata.com/2/redhat/$releasever/$basearch
enabled=True
gpgcheck=True
gpgkey=https://packages.treasuredata.com/GPG-KEY-td-agent
EOF
) > /etc/yum.repos.d/td.repo

yum install -y -q elasticsearch td-agent kibana centos-release-scl rh-nginx18
