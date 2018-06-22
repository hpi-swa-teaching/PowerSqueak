editor access
ensureScalingFontAttribute
	
	self text runs mapValues: [:eachRun |
		eachRun 
			detect: [:eachAttribute | eachAttribute class = PSScalingFontAttribute]
			ifFound: [:attribute | attribute scalingSource: self. eachRun]
			ifNone: [(Array new: eachRun size + 1)
				replaceFrom: 1 to: eachRun size with: eachRun;
				at: eachRun size + 1 put: self createFontSizeAttribute;
				yourself]
	]