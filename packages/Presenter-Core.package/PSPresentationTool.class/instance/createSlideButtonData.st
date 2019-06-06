toolbuilder buttons
createSlideButtonData

	^ Dictionary withAll: {	
		#size -> #hugeButtonSize.
		#name -> #CreateSlideButton.
		#label -> 'Create slide'.
		#action -> #createSlide}