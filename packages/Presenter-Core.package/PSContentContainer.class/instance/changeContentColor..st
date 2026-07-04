coloring
changeContentColor: aColor

	self shouldIgnoreNextColorDialogChange ifTrue: [^ self].
	self changeContentProperty: #color setter: #color: to: aColor