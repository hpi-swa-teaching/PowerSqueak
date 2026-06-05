bullets
decreaseBulletIndentOnSelection

	| range transformedText |
	range := self selectionLineRange.
	transformedText := self
		linesFrom: self textLines
		transformedBy: [:index :line |
			(range includes: index)
				ifTrue: [self decreasedBulletLineFor: line]
				ifFalse: [line]].
	self replaceTextKeepingState: transformedText