initialize-release
createFontSizeAttribute

	 ^ PSScalingFontAttribute 
		styled: self class defaultTextStyle  
		sized: self class defaultBasicTextSize 
		scaledBy: self