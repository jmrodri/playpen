curl -k -s -u admin:changeme -H "Accept: application/json" -X DELETE https://sat61fusor.example.com:443/fusor/api/v2/deployments/$1 | python -mjson.tool
