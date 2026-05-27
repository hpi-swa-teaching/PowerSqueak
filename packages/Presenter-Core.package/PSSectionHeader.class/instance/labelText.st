accessing
labelText

	^ self section name, '   (',
		(self tool presentation recursiveSlideCountOfSection: self section) printString,
		')'
