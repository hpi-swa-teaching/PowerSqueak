run button
repositionButton

	| margin |
	self runButton ifNil: [^ self].
	margin := self class buttonMargin.
	self runButton position:
		(self right - self runButton width - margin) @ (self top + margin)