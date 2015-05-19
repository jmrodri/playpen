source config
if [ "$IPADDR" = "" ]; then
    echo "Supply an IPADDR for your satellite in config"
    exit
fi
curl -k -s -u admin:changeme -H "Accept: application/json" -X GET https://$IPADDR:$PORT/fusor/api/v21/deployments/$1 | python -mjson.tool
