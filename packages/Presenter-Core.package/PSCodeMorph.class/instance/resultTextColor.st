result panel
resultTextColor

	^ self color luminance > 0.5
		ifTrue:  [self color muchDarker]
		ifFalse: [self color muchLighter]