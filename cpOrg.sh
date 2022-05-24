#!/bin/bash
# 定义颜色:
red='\e[0;31m' # 红色
RED='\e[1;31m'
green='\e[0;32m' # 绿色
GREEN='\e[1;32m'
yellow='\e[0;33m' # 黄色
YELLOW='\e[1;33m'
blue='\e[0;34m' # 蓝色
BLUE='\e[1;34m'
purple='\e[0;35m' # 紫色
PURPLE='\e[1;35m'
cyan='\e[0;36m' # 蓝绿色
CYAN='\e[1;36m'
WHITE='\e[1;37m' # 白色
NC='\e[0m' # 没有颜色

rm -rf organizations

cp -r ../twonodes/test-network/organizations .

echo -e "${red}Replace the user's certificate with an admin certificate and a secret (private) key in the connection profile (test-network.json). You need to specify the absolute path on the Explorer container.${NC}"
cat <<EOF

Before: 

    "adminPrivateKey": { "path": "/tmp/crypto/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp/keystore/priv_sk" } 

After: 
    
    "adminPrivateKey": { "path": "/tmp/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/keystore/priv_sk" }
    
EOF

echo -e "${green}Change 'priv_sk' to:${NC}"
echo -e "${GREEN}`ls ./organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/keystore`${NC}"
