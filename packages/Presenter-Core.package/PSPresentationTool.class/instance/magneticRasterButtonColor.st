as yet unclassified
magneticRasterButtonColor

	^ self magneticRasterActive 
		ifTrue: [PSPresentationTool highlightColor]
		ifFalse: [Color transparent]