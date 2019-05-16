toolbuilder buttons
sendToBackButtonData

	^ Dictionary withAll: {	
		#size -> self class bigButtonSize.
		#name -> #sendToBackButton.
		#label -> 'sendToBack'.
		#action -> #sendToBack}