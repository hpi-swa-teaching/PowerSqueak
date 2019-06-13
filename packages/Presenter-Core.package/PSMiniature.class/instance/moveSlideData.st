as yet unclassified
moveSlideData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Move Slide'.
			#action -> #moveSlide.
			#model -> self}