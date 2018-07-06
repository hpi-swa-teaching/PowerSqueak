as yet unclassified
hideSlideNumberMorphHandles

	self flag: #TODO. "This is feature envy, isn't it?"
	self slideNumberMorph owner resizeHandles do: [:each | 
		each 
			color: Color transparent;
			borderWidth: 0]