toolbuilder
selectSlideButtonData

	^ {	#frame -> (0.8@0.0 corner: 1.0@1.0).
		#name -> #AddSlideButton.
		#label -> 'Select Slide'.
		#action -> #openSlideSelectionDialog} asDictionary