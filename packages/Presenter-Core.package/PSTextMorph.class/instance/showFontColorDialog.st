styling
showFontColorDialog

	| color |
	color := self selectionColor.
	(NewColorPickerMorph 
		on: self 
		originalColor: color 
		setColorSelector: #selectionColor:) 
		openNear: self fullBoundsInWorld