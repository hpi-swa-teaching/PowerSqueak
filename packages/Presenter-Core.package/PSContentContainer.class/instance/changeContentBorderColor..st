coloring
changeContentBorderColor: aColor

	self shouldIgnoreNextColorDialogChange ifTrue: [^ self].
	self changeContentProperty: #borderColor setter: #borderColor: to: aColor