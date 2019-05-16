as yet unclassified
defaultContextMenuContent

	self slide isHidden 
		ifTrue: [^ #(('unhide' unhideSlide))] 
		ifFalse: [^ #(('hide' hideSlide))]
	