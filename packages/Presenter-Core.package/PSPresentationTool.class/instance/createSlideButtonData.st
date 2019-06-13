toolbuilder buttons
createSlideButtonData

	^ Dictionary withAll: {	
		#size -> #bigButtonSize.
		#name -> #CreateSlideButton.
		#label -> 'Create slide'.
		#action -> #createSlide}