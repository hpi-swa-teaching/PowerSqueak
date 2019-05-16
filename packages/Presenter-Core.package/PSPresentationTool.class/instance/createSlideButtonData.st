toolbuilder buttons
createSlideButtonData

	^ Dictionary withAll: {	
		#size -> self class bigButtonSize.
		#name -> #CreateSlideButton.
		#label -> 'Create slide'.
		#action -> #createSlide}