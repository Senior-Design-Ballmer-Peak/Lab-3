document.addEventListener('DOMContentLoaded', (event) => {
    function submitComment() {
      var name = document.getElementById('name').value;
      var comment = document.getElementById('comment').value;
  
      if (name && comment) {
        var commentList = document.getElementById('commentList');
        var newComment = document.createElement('li');
        newComment.innerHTML = `<strong>${name}</strong>: ${comment}`;
        commentList.appendChild(newComment);
  
        // Clear the input fields
        document.getElementById('name').value = '';
        document.getElementById('comment').value = '';
      } else {
        alert('Please enter your name and comment!');
      }
    }
  
    // Assign the submitComment function to a button's onclick event
    document.querySelector('.comment-form button').onclick = submitComment;
  });  