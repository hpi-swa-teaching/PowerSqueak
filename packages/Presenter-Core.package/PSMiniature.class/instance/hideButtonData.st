context menu
hideButtonData

	| dict |
	dict := Dictionary newFrom: {#noButton -> true. #model -> self}.
	
	self slide isHidden 
		ifTrue:
			[dict at: #contextMenuLabel put: 'Unhide'.
			dict at: #action put: #unhideSlide]
		 ifFalse:
			[dict at: #contextMenuLabel put: 'Hide'.
			dict at: #action put: #hideSlide].
			
	^ dict