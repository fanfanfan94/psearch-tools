curl -XGET 'localhost:9098/_search' -H 'Content-Type: application/json' -d'
{
	    "query": {
	            "match_all": {}
		        }
		}
'

