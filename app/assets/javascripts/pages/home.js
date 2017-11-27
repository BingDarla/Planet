var map = AmCharts.makeChart("chartdiv", {
"type": "map",
"dataProvider": {
  "map": "worldLow",
  "areas": [{
    "id": "AU",
    "modalUrl": "http://localhost:3000/countries/3",
    "selectable": true
  }, {
    "id": "JP",
    "modalUrl": "http://localhost:3000/countries/2",
    "selectable": true
  }, {
    "id": "CN",
    "modalUrl": "http://localhost:3000/countries/1",
    "selectable": true
  },{
    "id": "BR",
    "modalUrl": "http://localhost:3000/countries/4",
    "selectable": true
  }]
},
"areasSettings": {
  "selectedColor": "#CC0000"
},
"listeners": [{
  "event": "clickMapObject",
  "method": function(event) {
    {
      window.location.href = event.mapObject.modalUrl
  
    };
  }
}]
});
