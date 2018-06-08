initialize-release
createFontSizeAttribute

	 ^ PSScalingFontAttribute 
		styled: PSTextMorph DefaultTextStyle  
		sized: self defaultBasicTextSize 
		scaledBy: self