as yet unclassified
miniatureShortcuts

	^ Dictionary withAll: {
		Character delete -> self deleteHighlightedMiniature.
		Character backspace -> self deleteHighlightedMiniature.
		}