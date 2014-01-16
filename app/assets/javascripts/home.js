jQuery(document).ready(function($) {
 /* $('.homeSlideshow').bjqs({
    height      : 459,
    width       : 960,
	automatic: false,
	showcontrols: false,
	showmarkers: false,
	
    responsive  : true
  });
	 */
	 
	 $('.homeInfoBox').on('click', function(event) {
		 event.preventDefault();
		 if ($(this).attr('class') !== 'activeInfoBox') {
			 $('.activeInfoBox').toggleClass('activeInfoBox');
			 $(this).addClass('activeInfoBox')
		 }
		 
		 var s = $(this).attr('id');
		 var slideNum = parseInt(/infoBox-(\d+)/.exec(s)[1], 10);
		 
		 $('.activeSlide').toggleClass('activeSlide').hide();
		 $('#slide-'+slideNum).toggleClass('activeSlide').show();
		 
	 })

});