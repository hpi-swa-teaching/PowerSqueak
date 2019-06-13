as yet unclassified
saveAsLayoutData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Save Slide as Layout'.
			#action -> #saveAsLayout.
			#model -> self}