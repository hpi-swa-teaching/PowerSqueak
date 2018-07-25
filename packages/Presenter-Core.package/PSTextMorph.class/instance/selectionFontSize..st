styling
selectionFontSize: aNumber

	self selectionAddAttribute: 
		(PSScalingFontAttribute 
			styled: self class defaultTextStyle 
			sized: aNumber 
			scaledBy: self).
	self textMorph releaseParagraph