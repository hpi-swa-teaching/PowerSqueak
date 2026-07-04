presentation loading tests
testTextMorphSurvivesSaveLoad

	| textMorph loadedContent |
	textMorph := PSTextMorph new.
	textMorph setString: 'Hello Text'.

	loadedContent := self loadedContentAfterSaving: textMorph.

	self
		assert: loadedContent class equals: PSTextMorph;
		assert: loadedContent textMorph contents asString equals: 'Hello Text'