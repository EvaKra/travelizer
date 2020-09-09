import consumer from "./consumer";

//const messagesContainer = document.getElementById('messages'); 
//const formField = document.getElementById("new_message");

const initChatroomCable = () => {
  const formField = document.getElementById("new_message");
  const messagesContainer = document.getElementById('messages'); 
if (messagesContainer) {
  const id = messagesContainer.dataset.chatroomId;
  consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
    received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        formField.reset();
        var div = document.getElementById("messages");
        div.scrollTop = div.scrollHeight - div.clientHeight;
        
    },
    console.log(data);
  });
}
}


export { initChatroomCable };