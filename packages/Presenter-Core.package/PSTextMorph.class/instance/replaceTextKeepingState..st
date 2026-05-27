bullets
replaceTextKeepingState: aString

	self
		setString: aString;
		ensureScalingFontAttribute;
		relayoutText.
	self textMorph changed