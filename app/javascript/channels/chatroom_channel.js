import consumer from "./consumer";

//const messagesContainer = document.getElementById('messages'); 
const formField = document.getElementById("new_message");

const initChatroomCable = () => { // added
  const messagesContainer = document.getElementById('messages'); //added
if (messagesContainer) {
  const id = messagesContainer.dataset.chatroomId;
  consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
    received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        formField.reset();
        var div = document.getElementById("messages");
        div.scrollTop = div.scrollHeight - div.clientHeight;
        console.log(data); //added
    },
  });
}
}//added



// const initChatroomCable = () => {
//   const messagesContainer = document.getElementById('messages');
//   if (messagesContainer) {
//     const id = messagesContainer.dataset.chatroomId;

//     consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
//       received(data) {
//         console.log(data); // called when data is broadcast in the cable
//       },
//     });
//   }
// }
// const elmnt = document.getElementById("message-'<%= @message.id %>'");
//          elmnt.scrollBottom = elmnt.scrollHeight;

export { initChatroomCable }; //Added