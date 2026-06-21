styling
useMonospaceFont
	| attribute font|
	
	font := StrikeFont familyName: 'Courier' pointSize: 12.
	attribute := TextFontReference toFont: font.
	self addAttribute: attribute.
		