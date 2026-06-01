bullets
selectionLineRange

	| editor sourceText selectionStart selectionStop |
	editor := self textMorph editor.
	sourceText := self textMorph text string.
	selectionStart := editor startBlock stringIndex.
	selectionStop := editor stopBlock stringIndex.
	selectionStart := selectionStart max: 1.
	selectionStop := selectionStop max: selectionStart.
	^ (self lineIndexOfPosition: selectionStart in: sourceText)
		to: (self lineIndexOfPosition: selectionStop in: sourceText)