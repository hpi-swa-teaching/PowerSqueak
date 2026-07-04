styling
selectionColor: aColor

	self shouldIgnoreNextColorDialogChange ifTrue: [^ self].
	self performUndoableFormatting: [self basicSelectionColor: aColor]