styling
useMonospaceFont

	| attribute |
	attribute := TextFontReference toFont: self class monospaceFont.
	self addAttribute: attribute