#set -x
curl -ik -XPUT 'http://localhost:9098/.kibana/visualization/9f4e7ae0-0649-11e8-9848-eb4599fc5aa8' -H 'Content-Type: application/json' -d '
{
      "title": "CarDensityMap",
      "visState": "{\"title\":\"CarDensityMap\",\"type\":\"tile_map\",\"params\":{\"mapType\":\"Scaled Circle Markers\",\"isDesaturated\":true,\"addTooltip\":true,\"heatMaxZoom\":0,\"heatMinOpacity\":0.1,\"heatRadius\":25,\"heatBlur\":15,\"heatNormalizeData\":true,\"legendPosition\":\"bottomright\",\"mapZoom\":2,\"mapCenter\":[0,0],\"wms\":{\"enabled\":false,\"url\":\"https://basemap.nationalmap.gov/arcgis/services/USGSTopo/MapServer/WMSServer\",\"options\":{\"version\":\"1.3.0\",\"layers\":\"0\",\"format\":\"image/png\",\"transparent\":true,\"attribution\":\"Maps provided by USGS\",\"styles\":\"\"}}},\"aggs\":[{\"id\":\"1\",\"enabled\":true,\"type\":\"count\",\"schema\":\"metric\",\"params\":{}},{\"id\":\"2\",\"enabled\":true,\"type\":\"geohash_grid\",\"schema\":\"segment\",\"params\":{\"field\":\"location\",\"autoPrecision\":true,\"useGeocentroid\":true,\"precision\":2}}],\"listeners\":{}}",
      "uiStateJSON": "{\"mapZoom\":4,\"mapCenter\":[38.51378825951165,-89.36279296875]}",
      "description": "",
      "version": 1,
      "kibanaSavedObjectMeta": {
        "searchSourceJSON": "{\"index\":\"testindex\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"
      }
}'
sleep 1
curl -ik -XPUT 'http://localhost:9098/.kibana/visualization/e04c5bc0-0649-11e8-80a6-69b82b2681ee' -H 'Content-Type: application/json' -d '
{
      "title": "CarSpeedMap",
      "visState": "{\"title\":\"CarSpeedMap\",\"type\":\"tile_map\",\"params\":{\"mapType\":\"Scaled Circle Markers\",\"isDesaturated\":true,\"addTooltip\":true,\"heatMaxZoom\":0,\"heatMinOpacity\":0.1,\"heatRadius\":25,\"heatBlur\":15,\"heatNormalizeData\":true,\"legendPosition\":\"bottomright\",\"mapZoom\":2,\"mapCenter\":[0,0],\"wms\":{\"enabled\":false,\"url\":\"https://basemap.nationalmap.gov/arcgis/services/USGSTopo/MapServer/WMSServer\",\"options\":{\"version\":\"1.3.0\",\"layers\":\"0\",\"format\":\"image/png\",\"transparent\":true,\"attribution\":\"Maps provided by USGS\",\"styles\":\"\"}}},\"aggs\":[{\"id\":\"1\",\"enabled\":true,\"type\":\"avg\",\"schema\":\"metric\",\"params\":{\"field\":\"speed\"}},{\"id\":\"2\",\"enabled\":true,\"type\":\"geohash_grid\",\"schema\":\"segment\",\"params\":{\"field\":\"location\",\"autoPrecision\":true,\"useGeocentroid\":true,\"precision\":2}}],\"listeners\":{}}",
      "uiStateJSON": "{\"mapZoom\":4,\"mapCenter\":[24.607069137709683,-94.6142578125]}",
      "description": "",
      "version": 1,
      "kibanaSavedObjectMeta": {
        "searchSourceJSON": "{\"index\":\"testindex\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"
      }
}'
sleep 1
curl -ik -XPUT 'http://localhost:9098/.kibana/visualization/3f5dab50-064a-11e8-9210-f36000890567' -H 'Content-Type: application/json' -d '
{
      "title": "HistogramThrottlePosition",
      "visState": "{\"title\":\"HistogramThrottlePosition\",\"type\":\"histogram\",\"params\":{\"addLegend\":true,\"addTimeMarker\":false,\"addTooltip\":true,\"categoryAxes\":[{\"id\":\"CategoryAxis-1\",\"labels\":{\"show\":true,\"truncate\":100},\"position\":\"bottom\",\"scale\":{\"type\":\"linear\"},\"show\":true,\"style\":{},\"title\":{\"text\":\"throttlePosition\"},\"type\":\"category\"}],\"defaultYExtents\":false,\"drawLinesBetweenPoints\":true,\"grid\":{\"categoryLines\":false,\"style\":{\"color\":\"#eee\"}},\"interpolate\":\"linear\",\"legendPosition\":\"right\",\"radiusRatio\":9,\"scale\":\"linear\",\"seriesParams\":[{\"data\":{\"id\":\"1\",\"label\":\"Average throttlePosition\"},\"drawLinesBetweenPoints\":true,\"mode\":\"stacked\",\"show\":\"true\",\"showCircles\":true,\"type\":\"histogram\",\"valueAxis\":\"ValueAxis-1\"}],\"setYExtents\":false,\"showCircles\":true,\"times\":[],\"valueAxes\":[{\"id\":\"ValueAxis-1\",\"labels\":{\"filter\":false,\"rotate\":0,\"show\":true,\"truncate\":100},\"name\":\"LeftAxis-1\",\"position\":\"left\",\"scale\":{\"mode\":\"normal\",\"type\":\"linear\"},\"show\":true,\"style\":{},\"title\":{\"text\":\"Average throttlePosition\"},\"type\":\"value\"}]},\"aggs\":[{\"id\":\"1\",\"enabled\":true,\"type\":\"avg\",\"schema\":\"metric\",\"params\":{\"field\":\"throttlePosition\"}},{\"id\":\"2\",\"enabled\":true,\"type\":\"histogram\",\"schema\":\"segment\",\"params\":{\"field\":\"throttlePosition\",\"interval\":20,\"min_doc_count\":false,\"extended_bounds\":{}}}],\"listeners\":{}}",
      "uiStateJSON": "{}",
      "description": "",
      "version": 1,
      "kibanaSavedObjectMeta": {
        "searchSourceJSON": "{\"index\":\"testindex\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"
      }
}'
sleep 1
curl -ik -XPUT 'http://localhost:9098/.kibana/visualization/5c7e0770-064a-11e8-9210-f36000890567' -H 'Content-Type: application/json' -d '
{
      "title": "HistogramCarSpeedPosition",
      "visState": "{\"title\":\"HistogramCarSpeedPosition\",\"type\":\"histogram\",\"params\":{\"addLegend\":true,\"addTimeMarker\":false,\"addTooltip\":true,\"categoryAxes\":[{\"id\":\"CategoryAxis-1\",\"labels\":{\"show\":true,\"truncate\":100},\"position\":\"bottom\",\"scale\":{\"type\":\"linear\"},\"show\":true,\"style\":{},\"title\":{\"text\":\"speed\"},\"type\":\"category\"}],\"defaultYExtents\":false,\"drawLinesBetweenPoints\":true,\"grid\":{\"categoryLines\":false,\"style\":{\"color\":\"#eee\"}},\"interpolate\":\"linear\",\"legendPosition\":\"right\",\"radiusRatio\":9,\"scale\":\"linear\",\"seriesParams\":[{\"data\":{\"id\":\"1\",\"label\":\"Count\"},\"drawLinesBetweenPoints\":true,\"mode\":\"stacked\",\"show\":\"true\",\"showCircles\":true,\"type\":\"histogram\",\"valueAxis\":\"ValueAxis-1\"}],\"setYExtents\":false,\"showCircles\":true,\"times\":[],\"valueAxes\":[{\"id\":\"ValueAxis-1\",\"labels\":{\"filter\":false,\"rotate\":0,\"show\":true,\"truncate\":100},\"name\":\"LeftAxis-1\",\"position\":\"left\",\"scale\":{\"mode\":\"normal\",\"type\":\"linear\"},\"show\":true,\"style\":{},\"title\":{},\"type\":\"value\"}]},\"aggs\":[{\"id\":\"1\",\"enabled\":true,\"type\":\"count\",\"schema\":\"metric\",\"params\":{}},{\"id\":\"2\",\"enabled\":true,\"type\":\"histogram\",\"schema\":\"segment\",\"params\":{\"field\":\"speed\",\"interval\":20,\"extended_bounds\":{}}}],\"listeners\":{}}",
      "uiStateJSON": "{}",
      "description": "",
      "version": 1,
      "kibanaSavedObjectMeta": {
        "searchSourceJSON": "{\"index\":\"testindex\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"
      }
}'