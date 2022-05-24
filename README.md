### Fab-explorer

```shell
root@ubuntu:/usr/local/bysj/explorer# ./cpOrg.sh 
Replace the user's certificate with an admin certificate and a secret (private) key in the connection profile (test-network.json). You need to specify the absolute path on the Explorer container.

Before: 

    "adminPrivateKey": { "path": "/tmp/crypto/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp/keystore/priv_sk" } 

After: 
    
    "adminPrivateKey": { "path": "/tmp/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/keystore/priv_sk" }
    
Change 'priv_sk' to:
aec241a23a9262310388cca58c3d8a1090be0c3d04dd6e24ec8e257b8dda9462_sk


docker-compose up -d

docker-compose down -v
```
