#!/bin/bash -ex

# certbot environment variables
apikey="${API_KEY}"
certbotDomain="${CERTBOT_DOMAIN}"
validation="${CERTBOT_VALIDATION}"
filename="update.json"

json=$(cat <<-END
  {
    "apikey": "${apikey}",
    "domain": "${certbotDomain}",
    "delete": {
      "type": "TXT",
      "name": "_acme-challenge.${certbotDomain}"
    }
  }
END
) 
# write json file
echo "${json}" > ${filename}

# save txt record
curl  -H "Content-Type: application/json" --data @${filename} https://api.dnsexit.com/dns/

# delete json file
rm ${filename}

exit 0
