$(function(){
  function buildHTML(comment){
    let html = `<p>
                  <a href=/users/${comment.user_id}>${comment.user_name}</a>
                  ${comment.text}
                </p>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.comments').append(html);
      $('.input').val('');
      $('.submit').prop('disabled', false);
      $('.comments').animate({ scrollTop: $('.comments')[0].scrollHeight});
    })
    .fail(function(){
      alert('error');
    })
  });
});