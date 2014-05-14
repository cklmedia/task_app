$(document).ready ->
  $("#pop_box").hide()
  $(".sms_show_content").click ()->
  	$(".pop_title h3").text "短信内容"
  	$(".message_content").text $(this).attr("data-sms-content")
  	$(".own").text $(this).attr("data-sms-own")
  	$(".time").text $(this).attr("data-sms-time")
  	$("#pop_box").show()
  	page_info_pos = $("#page_info").offset();
  	pop_main_top = page_info_pos.top + $(".page_info").height() + 30
  	$("#pop_box").css("top", pop_main_top*2 + "px")
  	$(window).scroll (event) ->
      pop_box_y = $(this).scrollTop()
      if (pop_box_y <= pop_main_top || $(this).scrollTop()==0)
        pop_box_y = pop_main_top
      $("#pop_box").css("top", pop_box_y*2 + "px")
  	$(".pop_close_btn").click ()->
  	  $("#pop_box").hide()