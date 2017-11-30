var map = AmCharts.makeChart("chartdiv", {
"type": "map",
"dataProvider": {
  "map": "worldLow",
  "areas": [{
    "id": "AU",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/3",
    "selectable": true
  }, {
    "id": "JP",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/2",
    "selectable": true
  }, {
    "id": "CN",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/1",
    "selectable": true
  },{
    "id": "BR",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/4",
    "selectable": true
  },{
    "id": "CA",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/5",
    "selectable": true
  },{
    "id": "US",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/6",
    "selectable": true
  },{
    "id": "GL",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/7",
    "selectable": true
  },{
    "id": "AR",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/8",
    "selectable": true
  },{
    "id": "RU",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/9",
    "selectable": true
  },{
    "id": "AO",
    "modalUrl": "https://pacific-waters-84155.herokuapp.com/countries/10",
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
      window.location.href = event.mapObject.modalUrl;

    };
  }
}]
});
