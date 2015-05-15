curl -k -s -u admin:changeme -H "Accept: application/json" -X GET https://192.168.121.144:443/fusor/api/v21/deployments/$1 | python -mjson.tool
