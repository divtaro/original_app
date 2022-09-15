import consumer from "./consumer"

if(location.pathname.match(/\/posts\/\d/)){

  consumer.subscriptions.create("CommentChannel", {
    connected() {
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      const html = `
      <div class='comment-row'>
        <div class="user-info">${data.user.user_name}： </div>
        <div class='comment-sentence'>${data.comment.text}</div>
      </div>`
      const comments = document.getElementById("comments")
      comments.insertAdjacentHTML('beforeend', html)
      const commentForm = document.getElementById("comment-form")
      commentForm.reset();
    }
  })
}