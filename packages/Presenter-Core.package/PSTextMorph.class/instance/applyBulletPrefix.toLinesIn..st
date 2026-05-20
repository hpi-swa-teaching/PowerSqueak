bullets
applyBulletPrefix: aPrefix toLinesIn: aRange

	| transformedText |
	transformedText := self
		linesFrom: self textLines
		transformedBy: [:index :line |
			(aRange includes: index)
				ifTrue: [self line: line withBulletPrefix: aPrefix]
				ifFalse: [line]].
	self replaceTextKeepingState: transformedText