toolbuilder buttons
nextSlideButtonData

	^ Dictionary withAll: {	
		#size -> #smallButtonSize.
		#name -> #NextSlideButton.
		#label -> '>'.
		#action -> #nextSlide.
		#help -> 'Next slide'}