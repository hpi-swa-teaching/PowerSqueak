styling
openColorDialogWIth: aColor selecting: aSymbol

	^ (NewColorPickerMorph 
		on: self 
		originalColor: aColor
		setColorSelector: aSymbol) 
		openNear: self fullBoundsInWorld;
		yourself
		