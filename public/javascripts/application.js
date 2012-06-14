$(document).ready(function () {
  $('#api_request').mousedown(function (event) {
    $.get('/api_request', function (data) {
      $('#request_result').text(data);
      $('#request_result').slideDown('slow');
    });
  });
});
