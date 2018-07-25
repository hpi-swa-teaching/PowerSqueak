initialize-release
createFontSizeAttribute

	 ^ PSScalingFontAttribute 
		styled: self class defaultTextStyle  
		sized: self defaultBasicTextSize 
		scaledBy: self