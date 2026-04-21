docker exec -it owncloud_server bash
cd /var/www/owncloud


docker compose exec owncloud occ config:app:set openidconnect openid-connect \
--value='{
  "provider-url": "http://0.0.0.0:8082/realms/nova",
  "client-id": "owncloud",
  "client-secret": "J7GF68KDa4NNZ5utMDy5xhi8vDNtyDvf",
  "loginButtonName": "Login with Keycloak"
}'