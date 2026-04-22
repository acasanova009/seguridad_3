docker exec -it owncloud_server bash
cd /var/www/owncloud

docker exec owncloud_server occ status

docker exec owncloud_server occ config:app:set openidconnect openid-connect \
--value='{
  "provider-url": "http://localhost:8082/realms/nova",
  "client-id": "owncloud",
  "client-secret": "J7GF68KDa4NNZ5utMDy5xhi8vDNtyDvf",
  "loginButtonName": "Login with Keycloak"
}'

DOCUMENTACION:
docker exec --user www-data <owncloud-container-name> occ <your-command>

occ config:app:set openidconnect openid-connect \
--value='{"provider-url":"https://idp.example.net",
          "client-id":"fc9b5c78-ec73-47bf-befc-59d4fe780f6f",
          "client-secret":"e3e5b04a-3c3c-4f4d-b16c-2a6e9fdd3cd1",
          "loginButtonName":"Login"
          }'