import consumer from "./consumer"



consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
  	if(data.room == $('#room_messages').attr('data-room-id')){
    	$('#room_messages').append('<div class="message">' + data.user + ': ' + data.content + '</div>');
    }
    $('#room').append('<div class="col-md-3"><div class="card"><div class="card-body"><i class="fas fa-' + data.icon + '"></i><br><a href="/rooms/' + data.id + '">' + data.topic + '</a></div></div></div>');
  }
})


let submit_messages;
let create_room;

$(document).on('turbolinks:load', function () {
  submit_messages();
  create_room();
})

submit_messages = function () {
  $('#message_content').on('keydown', function (event) {
    if (event.keyCode == 13) {
      $('input').click()
      event.target.value = ''
      event.preventDefault()
    }
  });
}

create_room = function () {
  $('#room_topic').on('keydown', function (event) {
    if (event.keyCode == 13) {
      $('input').click()
      event.target.value = ''
      event.preventDefault()
    }
  });
}


