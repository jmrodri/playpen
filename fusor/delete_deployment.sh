source config
if [ "$IPADDR" = "" ]; then
    echo "Supply an IPADDR for your satellite in config"
    exit
fi
curl -k -s -u admin:changeme -H "Accept: application/json" -X DELETE https://$IPADDR:$PORT/fusor/api/v2/deployments/$1 | python -mjson.tool
