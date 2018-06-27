toolbuilder
imageFieldButtonData

	^ Dictionary withAll: {
		#frame -> (0.5@0.0 corner: 0.55@1.0).
		#name -> #imageFieldButton.
		#label -> 'I'.
		#action -> #newImageField.
		#help -> 'Add an Image'}