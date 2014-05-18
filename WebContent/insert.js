$(document).ready(function() {
$('#book').submit(function(){
var cus_id= $('#cus_id').val(); 
var cus_name= $('#cus_name').val();
var cus_phone= $('#cus_phone').val();
var roomtype= $('#roomtype').val();
var cus_num= $('#cus_num').val();
var from= $('#from').val();
var to= $('#to').val();
var cus_message= $('#cus_message').val();
$.ajax({type:"post",url:"book.jsp",data:"cus_id="
+cus_id+"cus_name="+cus_name+"cus_phone="+cus_phone+"roomtype="+roomtype+"cus_num="+cus_num+"from="+from+"to="+to+"cus_message="+cus_message,success:function(){ 
    $("#mes").fadeIn("slow"); } });
return false;
});

});