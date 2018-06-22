toolbuilder
deleteSlideButtonData

	^ Dictionary withAll: {	
		#frame -> (0.55@0.0 corner: 0.70@1.0).
		#name -> #DeleteSlideButton.
		#label -> 'Delete Slide'.
		#action -> #deleteSlide}