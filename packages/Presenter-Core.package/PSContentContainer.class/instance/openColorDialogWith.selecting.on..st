coloring
openColorDialogWith: aColor selecting: aSymbol on: aMorph

	| picker |
	aMorph setProperty: #ignoreNextColorDialogChange toValue: true.
	picker := (NewColorPickerMorph
		on: aMorph
		originalColor: aColor
		setColorSelector: aSymbol)
		openNear: self fullBoundsInWorld;
		yourself.
	self slide ifNotNil: [:slide | slide registerColorDialog: picker].
	^ picker