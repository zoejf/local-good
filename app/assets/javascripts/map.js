$(function(){

   // render map
  L.mapbox.accessToken = 'pk.eyJ1Ijoiam9zaGxiYWtlcjExIiwiYSI6ImE0ZjEzNjY0OGE5NzM0OWFlZTJiMzhjN2EwMjBjYmNiIn0.-X5q9AKOOsIA-OQPrbOPTw';
												 
  var map = L.mapbox.map('map', 'joshlbaker11.n899ei0m', {
            center: [37.762, -122.437],
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
  var showMarker = function(lng, lat) {
    L.mapbox.featureLayer({
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [lng, lat]
      },
      properties: {
      description: 'Business Name',
        'marker-size': 'small',
        'marker-color': '#fc4607',
        'marker-symbol': 'circle-stroked'

      }
    }).addTo(map);
  };

  // $.get("/results.json",function(data){
  //   data.forEach(function(article){
  //     var location = article.geo_facet[0]
  //     var title = article.title
  //     var link = article.url

  //     console.log(link);

  //     if(location !== undefined && title !== undefined){
  //       geocoder.query(article.geo_facet[0], function(err, geo) {          
  //         if (!err) {
  //           showMarker(geo.latlng[1], geo.latlng[0], title, link);
  //         }
  //       });
  //     }
  //   });
  // });
  



});






