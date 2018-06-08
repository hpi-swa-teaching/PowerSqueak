toolbuilder
deleteSlideButtonData

	^ Dictionary withAll: {	
		#frame -> (0.35@0.0 corner: 0.50@1.0).
		#name -> #DeleteSlideButton.
		#label -> 'Delete Slide'.
		#action -> #deleteSlide}