toolbuilder
snapButtonColor

	^ self snapActive 
		ifTrue: [PSPresentationTool highlightColor]
		ifFalse: [Color transparent]