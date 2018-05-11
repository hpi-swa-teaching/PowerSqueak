toolbuilder
deleteSlideButtonData

	^ {	#frame -> (0.4@0.0 corner: 0.55@1.0).
		#name -> #DeleteSlideButton.
		#label -> 'Delete Slide'.
		#action -> #deleteSlide} asDictionary