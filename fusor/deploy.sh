if [ "$1" = "" ]; then
    echo
    echo "Please supply a deployment id."
    echo
    echo "Usage: ./deploy.sh DEPLOYMENT_ID [SKIP_CONTENT]"
    echo
    exit
fi

# I don't care what the value is, if it is present we want to skip content
if [ "$2" = "" ]; then
  SKIP_CONTENT=false
else
  SKIP_CONTENT=true
fi

# deploy
curl -k -s -u admin:changeme -H "Accept: application/json" -H "Content-Type: application/json" -X PUT https://sat61fusor.example.com:443/fusor/api/v2/deployments/$1/deploy?skip_content=$SKIP_CONTENT | python -mjson.tool
