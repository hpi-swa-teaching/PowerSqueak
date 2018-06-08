initialize-release
initializeTextAttribute

	self textMorph text addAttribute: self createFontSizeAttribute.
	"self textMorph text addAttribute: (TextFontReference toFont:(PSTextMorph DefaultTextStyle fontOfSize: 44))."
	"self textMorph recomposeChain."
	"self textMorph releaseParagraph."
	"self textMorph createParagraph."
	"self textMorph releaseCachedState."