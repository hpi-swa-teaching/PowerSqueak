toolbuilder buttons
nextSlideButtonData

	^ Dictionary withAll: {	
		#size -> self class smallButtonSize.
		#name -> #NextSlideButton.
		#label -> '>'.
		#action -> #nextSlide.
		#help -> 'Next slide'}