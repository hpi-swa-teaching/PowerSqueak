initialize-release
initialize 

	super initialize.
	self textMorph text addAttribute: (PSScalingFontAttribute styled: PSTextMorph DefaultTextStyle  sized: self defaultBasicTextSize scaledBy: self).
	self extension
		setProperty: #acceptRescale toValue: true;
		setProperty: #wantsCustomContextMenu toValue: true