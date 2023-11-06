buttons
inspectContentData

	 ^ Dictionary withAll: {
			#label -> 'Inspect'.
			#contextMenuLabel -> 'Inspect morph'.
			#action -> #inspectContent.
			#size -> #bigButtonSize.
			#name -> #inspectContentButton.
			#model -> self}