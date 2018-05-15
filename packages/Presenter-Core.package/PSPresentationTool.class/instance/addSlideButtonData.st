toolbuilder
addSlideButtonData

	^ Dictionary withAll: {	
		#frame -> (0.0@0.0 corner: 0.15@1.0).
		#name -> #AddSlideButton.
		#label -> 'Create Slide'.
		#action -> #createSlide}