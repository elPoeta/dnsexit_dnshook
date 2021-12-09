#!/bin/bash -e

echo "Test Authenticator Script"

# ask for user input
read -p 'DNSExit filename: ' filename
read -p 'DNSExit json: ' json
read -p 'DNSExit Domain:: ' domain

# export variables
export FILE_NAME=${filename}
export JSON=${json}
export CERTBOT_DOMAIN=${domain}
export CERTBOT_VALIDATION=jfEVZCbJH_J96HjWXPNGoW0rpolrztrA-arVqPTre8c

# execute authenticator
./authenticatorApi.sh

# echo print success
echo "authenticator executed successfully!"
