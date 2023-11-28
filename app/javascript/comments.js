// comments.js

function submitCommentToServer() {
    const name = document.getElementById('name').value;
    const comment = document.getElementById('comment').value;

    // Send a request to your Rails server to create a new comment
    fetch('/comments', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
        },
        body: JSON.stringify({
            name: name,
            content: comment,
        }),
    })
        .then(response => response.json())
        .then(data => {
            // Handle the response (e.g., update the UI with the new comment)
            console.log(data);
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
