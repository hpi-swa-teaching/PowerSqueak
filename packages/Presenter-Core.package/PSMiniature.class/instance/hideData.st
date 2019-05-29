as yet unclassified
hideData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Hide'.
			#action -> #hideSlide.
			#model -> self}