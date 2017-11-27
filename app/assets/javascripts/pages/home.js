var map = AmCharts.makeChart("chartdiv", {
"type": "map",
"dataProvider": {
  "map": "worldLow",
  "areas": [{
    "id": "AU",
    "modalUrl": "http://localhost:3000/countries/27",
    "selectable": true
  }, {
    "id": "JP",
    "modalUrl": "http://localhost:3000/countries/26",
    "selectable": true
  }, {
    "id": "CN",
    "modalUrl": "http://localhost:3000/countries/25",
    "selectable": true
  },{
    "id": "BR",
    "modalUrl": "http://localhost:3000/countries/28",
    "selectable": true
  }]
},
"areasSettings": {
  "selectedColor": "#CC0000"
},
"listeners": [{
  "event": "clickMapObject",
  "method": function(event) {
    $.fancybox({
      "href": event.mapObject.modalUrl,
      "title": event.mapObject.title,
      "type": "iframe"
    });
  }
}]
});
