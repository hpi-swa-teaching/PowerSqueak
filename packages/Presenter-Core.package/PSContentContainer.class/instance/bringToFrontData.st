as yet unclassified
bringToFrontData

	 ^ Dictionary withAll: {
			#label -> 'To Front'.
			#contextMenuLabel -> 'Bring to front'.
			#action -> #comeToFront.
			#size -> #bigButtonSize.
			#name -> #bringToFrontButton.
			#model -> self}