function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {zoom: 8});
  var geocoder = new google.maps.Geocoder();

  geocodeAddress(geocoder, map);

  document.getElementById('submit-geocode').addEventListener('click', function() {
    geocodeAddress(geocoder, map);
  });
}

function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('address').value;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === 'OK') {
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
      });
    } else {
      alert('По даному запиту нічого не знайдено');
    }
  });
}
