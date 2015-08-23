$(function(){

   // render map
  L.mapbox.accessToken = 'pk.eyJ1Ijoiam9zaGxiYWtlcjExIiwiYSI6ImE0ZjEzNjY0OGE5NzM0OWFlZTJiMzhjN2EwMjBjYmNiIn0.-X5q9AKOOsIA-OQPrbOPTw';

  var map = L.mapbox.map('map', 'joshlbaker11.n899ei0m', {
            center: [37.787, -122.437],
            zoom: 13,
            minZoom: 2,
            zoomControl: false,
            maxBounds: [[-90, -180], [90, 180]]

  });

      // map.dragging.disable();
      map.touchZoom.disable();
      map.doubleClickZoom.disable();
      map.scrollWheelZoom.disable();
      // Disable tap handler, if present.
      if (map.tap) map.tap.disable();

  //set variables
  var geocoder = L.mapbox.geocoder('mapbox.places-v1');
  // function to show markers on map
  var showMarker = function(lng, lat, name, phone) {
    L.mapbox.featureLayer({
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [lng, lat]
      },
      properties: {
      description: "<strong>" link + name + "</strong>" + "<br>" + phone,
        'marker-size': 'medium',
        'marker-color': '#0967A9',
        'marker-symbol': 'circle-stroked'
      }
    }).addTo(map);
  };

  $.get("/pages/busAPI",function(data){
    console.log(data);
    data.forEach(function(businesses){
      var lat = parseFloat(businesses.lat);
      var lng = parseFloat(businesses.lng);
      var name = businesses.name;
      var phone = businesses.phone;
      var link = "a href='businesses/1'"
      showMarker(lng, lat, name, phone);
    });
  });

});
