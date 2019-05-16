toolbuilder buttons
previousSlideButtonData

	^ Dictionary withAll: {	
		#size -> self class smallButtonSize.
		#name -> #PreviousSlideButton.
		#label -> '<'.
		#action -> #previousSlide.
		#help -> 'Previous slide'}