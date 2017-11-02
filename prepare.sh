#!/bin/sh
set -xe
export NODE_NAME="MASTER"
bin/elasticsearch-plugin install -b com.floragunn:search-guard-5:5.6.3-16
chmod a+x plugins/search-guard-5/tools/install_demo_configuration.sh
plugins/search-guard-5/tools/install_demo_configuration.sh -y

sed -i  's/network.host.*0$//' config/elasticsearch.yml
sed -i  's/cluster.name.*demo$//' config/elasticsearch.yml
