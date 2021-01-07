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
    	$('#room_messages').append('<div class="row"><div class="col-md-1"><i class="fas fa-portrait fa-4x"></i></div><div class="message"><p><strong>' + data.user + '</strong> <small>' + data.timestamp + '</small></p><p>' + data.content + '</p></div></div>');
    }
  }
})

let submit_messages;

$(document).on('turbolinks:load', function () {
  submit_messages();
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


