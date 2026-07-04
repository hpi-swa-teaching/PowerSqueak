styling
shouldIgnoreNextColorDialogChange

	(self valueOfProperty: #ignoreNextColorDialogChange ifAbsent: [false])
	ifTrue: [
		self setProperty: #ignoreNextColorDialogChange toValue: false.
		^ true].
	^ false