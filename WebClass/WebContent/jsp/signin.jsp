<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>


<form id="loginForm">
<select name="list">
<option value="">-선택-</option>
<option value="eb">이비즈니스과</option>
<option value="dc">디지털콘텐츠과</option>
<option value="wp">웹프로그래밍과</option>
<option value="hd">해킹방어과</option>
</select><br>
<input type="radio" name="grade" value="1" checked>1학년
<input type="radio" name="grade" value="2">2학년
<input type="radio" name="grade" value="3">3학년<br>
<input type="text" id="id" name="id" placeHolder="번호" required><br>
<input type="text" id="pwd" name="pwd" placeHolder="이름" required><br>
	
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>
</form>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  
   <script>
   $(document).ready(function (){
	  $('#loginForm').submit(function(event){
		  event.preventDefault();
		  var id=$('#id').val();
		  var pwd=$('#pwd').val();
		  
		  $.post("http://httpbin.org/post",
				  {id:id, pwd:pwd},
				  function(data){
					 var myModal = $('#myModal');
					 myModal.modal();
					 myModal.find('.modal-body').text(data.form.id+'님 로그인 되었습니다.');
			});
	  });
   });
   </script>
</body>
</html>