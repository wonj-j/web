$(document).ready(() => {

	$(".fas.fa-chevron-right").hide();

	$(".fas.fa-chevron-right").on({
		click: () =>{
		  $("#mypagemenu").animate({
			 position : "fixed",
			 left : "-80px"
		  },1000)
		  $(".fas.fa-chevron-right").hide();
		  $(".fas.fa-chevron-left").show();
		},
		mouseover : ()=>{
		  $(".fas.fa-chevron-right").css({
			"cursor" : "pointer",
			"color" : "slategray",
			"background-color" : "lightgreen"
		});
		},
		mouseout : ()=>{
			$(".fas.fa-chevron-right").css({
				"background-color" : "#56C3B8",
				"color" : "white"
			});
		}
	 });
	 
	 $(".fas.fa-chevron-left").on({
		click: () =>{
		  $("#mypagemenu").animate({
			 position : "fixed",
			 left : "-285px"
		  },1000)
		  $(".fas.fa-chevron-left").hide();
		  $(".fas.fa-chevron-right").show();
		},
		mouseover : ()=>{
		  $(".fas.fa-chevron-left").css({
			  "cursor" : "pointer",
			  "color" : "slategray",
			  "background-color" : "lightgreen" 
		  });
		},
		mouseout : ()=>{
			$(".fas.fa-chevron-left").css({
				"background-color" : "#56C3B8",
				"color" : "white"
			});
		}
	 });

	 $(".items").each(function(){
		$(this).on({
		  mouseover : ()=>{
			 $(this).css({
				"background-color" : "lightgreen",
				"color" : "slategray",
				"cursor" : "pointer"
			 });
		  },
		  mouseout : ()=>{
			 $(this).css({
				"background-color" : "#56C3B8",
				"color" : "white"
			 });
		  }
		});
	 });

});