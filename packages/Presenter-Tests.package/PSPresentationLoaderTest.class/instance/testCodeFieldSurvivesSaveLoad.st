presentation loading tests
testCodeFieldSurvivesSaveLoad

	| codeMorph loadedContent |
	codeMorph := PSCodeMorph new.
	codeMorph setString: '3 + 4'.

	loadedContent := self loadedContentAfterSaving: codeMorph.

	self assert: loadedContent class equals: PSCodeMorph.
	self assert: loadedContent textMorph contents asString equals: '3 + 4'.
	self assert: loadedContent runButton notNil