model access
setText: aText

	super setText: aText.
	self ensureScalingFontAttribute.
	self textMorph releaseParagraph