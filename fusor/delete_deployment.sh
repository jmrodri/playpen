curl -k -s -u admin:changeme -H "Accept: application/json" -X DELETE https://192.168.121.144:443/fusor/api/v2/deployments/$1 | python -mjson.tool
