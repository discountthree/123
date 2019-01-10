$(function(){
	//头部列表
	$("#mypet").mouseenter(function(){
		$(".mypet").css("display","block");
	 
	})
	$("#mypet").mouseleave(function(){
		$(".mypet").css("display","none");
	})
	$("#mycollect").mouseenter(function(){
		$(".mycollect").css("display","block");
	})
	$("#mycollect").mouseleave(function(){
		$(".mycollect").css("display","none");
	})
	
	//商品列表
	$(".dog").mouseenter(function(){
		 
		$(".main_left").css("display","block");
		$(".goods").css("display","none");
	})
	
	$(".sort").mouseenter(function(){
		 
		$(".main_left").css("display","none");
		$(".goods").css("display","block");
	})
	
	$(".goods span").mouseenter(function(){ 
		$(this).css("border","1px solid green").siblings().css("border","none");
	    $(this).children("div").css("display","block");
	})
	$(".goods span").mouseleave(function(){ 
		$(this).css("border","none");
	    $(this).children("div").css("display","none");
	})
	
	
	
	//活动时间
	$(".ctb_right ul li").mouseenter(function(){
		console.log("ee");
		var index = $(this).index();
		$(this).find("b").css("display","block").parent().siblings().find("b").css("display","none");
        $(this).find("span").css({background:"#fe5400",color:"#fff",fontSize:"18px", borderRadius:"8px"}).parent().siblings().find("span").css({background:"none",color:"#999", fontSize:"14px"});	    	        	
    	$(".center1_right").children("div").eq(index).show().siblings().hide();  		   
	})
	 

})
