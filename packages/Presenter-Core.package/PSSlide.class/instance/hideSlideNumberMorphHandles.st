as yet unclassified
hideSlideNumberMorphHandles

	self slideNumberMorph owner resizeHandles do: [:each | 
		each 
			color: Color transparent;
			borderWidth: 0]