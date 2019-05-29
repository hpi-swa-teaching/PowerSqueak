as yet unclassified
unhideData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Unhide'.
			#action -> #unhide.
			#model -> self}