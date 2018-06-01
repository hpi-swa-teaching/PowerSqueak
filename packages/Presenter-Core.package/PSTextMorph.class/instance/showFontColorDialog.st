styling
showFontColorDialog

	| color |
	color := self getLocalFontColor.
	(NewColorPickerMorph 
		on: self 
		originalColor: color 
		setColorSelector: #setLocalFontColor:) 
		openNear: self fullBoundsInWorld