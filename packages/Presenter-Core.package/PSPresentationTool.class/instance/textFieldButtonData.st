toolbuilder
textFieldButtonData

	^ Dictionary withAll: {	
		#frame -> (0.25@0.0 corner: 0.3@1.0).
		#name -> #textFieldButton.
		#label -> 'T'.
		#action -> #newTextField.
		#help -> 'Add a text field'}