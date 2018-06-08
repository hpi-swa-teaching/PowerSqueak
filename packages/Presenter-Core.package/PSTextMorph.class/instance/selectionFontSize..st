styling
selectionFontSize: aNumber

	self selectionAddAttribute: 
		(PSScalingFontAttribute 
			styled: PSTextMorph DefaultTextStyle 
			sized: aNumber 
			scaledBy: self)