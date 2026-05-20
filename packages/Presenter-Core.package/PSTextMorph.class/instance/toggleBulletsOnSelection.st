bullets
toggleBulletsOnSelection

	| range selectedLines newPrefix |
	range := self selectionLineRange.
	selectedLines := self textLines copyFrom:
		(range first min: self textLines size)
		to: (range last min: self textLines size).
	newPrefix := (self linesAllHaveLevel1Bullet: selectedLines)
		ifTrue: ['']
		ifFalse: [self class bulletLevel1Prefix].
	self applyBulletPrefix: newPrefix toLinesIn: range