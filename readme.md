# Algolia Test

This application is usisng wrapper API for algoliasearch API to protect public key and to secure API using Access-Control-Allow-Origin.

Since API is wrapped and served from backend of this application, speed of API will depend on your server configuration.

## config.js

```javsacript
{
	'algolia': {
		'appID': 'abdef',
		'publicApiKey': '123456',
		'privateApiKey': '1234abcd',
		'indexName': 'some_name'
	},
	'server': {
		'port': 5000,
		'cors': {
			'enabled': true,
			'whitelist': [] /* array of whitelisted domains for CORS */
		}
	}
}
```

## Install using DOCKER

```
/* After building and running docker image, application will be accessible on localhost:5500 */

docker build -t algolia-test
docker run -p 5500:5000 algolia-test
```