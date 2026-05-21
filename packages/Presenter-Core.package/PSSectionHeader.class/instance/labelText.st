accessing
labelText

	^ self section name, '   (',
		(self tool presentation slideCountOfSection: self section) printString, ')'
