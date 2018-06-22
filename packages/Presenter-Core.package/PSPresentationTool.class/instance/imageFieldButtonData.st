toolbuilder
imageFieldButtonData

	^ Dictionary withAll: {
		#frame -> (0.3@0.0 corner: 0.35@1.0).
		#name -> #imageFieldButton.
		#label -> 'I'.
		#action -> #newImageField.
		#help -> 'Add an Image'}