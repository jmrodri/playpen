if [ "$1" = "" ]; then
    echo
    echo "Please supply a deployment id."
    echo
    echo "Usage: ./deploy.sh DEPLOYMENT_ID"
    echo
    exit
fi

curl -k -s -u admin:changeme -H "Accept: application/json" -X GET https://sat61fusor.example.com:443/fusor/api/v21/deployments/$1 | python -mjson.tool
