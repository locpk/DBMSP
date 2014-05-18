$(document).ready(function(){
	
	//--------------------------------- Tabs section setup  --------------------------------//
	
		$('#wrapper').easytabs({
    	animate			: true,
    	updateHash		: false,
    	transitionIn	:'slideDown',
    	transitionOut	:'slideUp',
    	animationSpeed	:600,
		tabActiveClass	:'active',
		tabs            :' #mainNav > ul > li',
		transitionInEasing: 'easeOutExpo',
	  	transitionOutEasing: 'easeInOutExpo'
    
    });
	
//--------------------------------- End tabs section setup --------------------------------//

});
