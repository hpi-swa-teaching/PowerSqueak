as yet unclassified
hideData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Hide'.
			#action -> #hide.
			#model -> self}