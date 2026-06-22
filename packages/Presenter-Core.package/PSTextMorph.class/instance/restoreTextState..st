undo-redo
restoreTextState: aPSTextState

	self setText: aPSTextState text copy.
	self
		ensureScalingFontAttribute;
		relayoutText.
	self textMorph changed