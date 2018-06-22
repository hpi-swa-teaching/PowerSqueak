toolbuilder
selectSlideButtonData

	^ Dictionary withAll: {	
		#frame -> (0.8@0.0 corner: 0.9@1.0).
		#name -> #AddSlideButton.
		#label -> 'Select Slide'.
		#action -> #openSlideSelectionDialog}