if [ "$1" = "" ]; then
  SKIP_CONTENT=false
else
  SKIP_CONTENT=true
fi
curl -k -s -u admin:changeme -H "Accept: application/json" -H "Content-Type: application/json" -X PUT https://sat61fusor.example.com:443/fusor/api/v2/deployments/$1/deploy?skip_content=$SKIP_CONTENT | python -mjson.tool
