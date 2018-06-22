styling
showBackgroundColorDialog

	(NewColorPickerMorph 
		on: self 
		originalColor: self color 
		setColorSelector: #color:) 
		openNear: self fullBoundsInWorld