font tests
testNewCodeMorphHasFontAttribute

	| freshMorph |
	freshMorph := PSCodeMorph new.
	freshMorph textMorph contents: 'self size'.
	freshMorph useMonospaceFont.
	self assert: ((freshMorph textMorph text attributesAt: 1)
		anySatisfy: [:attribute | attribute class = TextFontReference])
