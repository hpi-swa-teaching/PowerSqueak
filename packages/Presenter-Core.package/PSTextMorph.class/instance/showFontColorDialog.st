styling
showFontColorDialog

	(NewColorPickerMorph 
		on: self 
		originalColor: self selectionColor 
		setColorSelector: #selectionColor:) 
		openNear: self fullBoundsInWorld