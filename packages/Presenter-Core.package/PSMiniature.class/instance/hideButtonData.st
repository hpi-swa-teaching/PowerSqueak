context menu
hideButtonData

	| dict |
	dict := Dictionary newFrom: {#noButton -> true. #model -> self}.
	
	self slide isHidden 
		ifTrue:
			[dict addAll: {#contextMenuLabel -> 'Unhide'. #action -> #unhideSlide}]
		 ifFalse:
			[dict addAll: {#contextMenuLabel -> 'Hide'. #action -> #hideSlide}].
			
	^ dict