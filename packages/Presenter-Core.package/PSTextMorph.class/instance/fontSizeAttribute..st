styling
fontSizeAttribute: aNumber

	^ PSScalingFontAttribute 
		styled: self class defaultTextStyle 
		sized: aNumber 
		scaledBy: self