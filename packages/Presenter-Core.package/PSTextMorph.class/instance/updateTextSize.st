scaling
updateTextSize	
	
	"self textMorph beAllFont: (PSTextMorph DefaultTextStyle fontOfSize: self actualTextSize)"
	"self textMorph text addAttribute: (TextFontReference toFont: ((PSTextMorph DefaultTextStyle fontOfSize: self actualTextSize)))"
	"self textMorph text addAttribute: (PSScalingFontAttribute styled: PSTextMorph DefaultTextStyle  sized: self basicTextSize scaledBy: self)"