$(document).ready ->
  $("#api_request").mousedown (event) ->
    $.get "/api_request", (data) ->
      $("#request_result").text data
      $("#request_result").slideDown "slow"