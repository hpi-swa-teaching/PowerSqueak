coloring
openColorDialogWith: aColor selecting: aSymbol on: aMorph

	^ (NewColorPickerMorph 
		on: aMorph
		originalColor: aColor
		setColorSelector: aSymbol) 
		openNear: self fullBoundsInWorld;
		yourself