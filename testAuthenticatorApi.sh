#!/bin/bash -e

echo "Test Authenticator Script"

# ask for user input
read -p 'DNSExit api-key:: ' apikey
read -p 'DNSExit Domain:: ' domain

# export variables
export API_KEY=${apikey}
export CERTBOT_DOMAIN=${domain}
export CERTBOT_VALIDATION=jfEVZCbJH_J96HjWXPNGoW0rpolrztrA-arVqPTre8c

# execute authenticator
./authenticatorApi.sh

# echo print success
echo "authenticator executed successfully!"
