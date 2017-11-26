var map = AmCharts.makeChart("chartdiv", {
  "type": "map",
  "dataProvider": {
    "map": "worldLow",
    "areas": [{
      "id": "US",
      "modalUrl": "https://en.wikipedia.org/wiki/United_States",
      "selectable": true
    }, {
      "id": "FR",
      "modalUrl": "https://en.wikipedia.org/wiki/France",
      "selectable": true
    }, {
      "id": "CN",
      "modalUrl": "https://en.wikipedia.org/wiki/China",
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
