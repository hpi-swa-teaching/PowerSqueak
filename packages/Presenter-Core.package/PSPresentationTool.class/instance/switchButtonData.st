toolbuilder
switchButtonData

	^ Dictionary withAll: {
		#frame -> (0.35@0.0 corner: 0.45@1.0).
		#name -> #moveButton.
		#label -> 'Move'.
		#action -> #openSlideMoveDialog}