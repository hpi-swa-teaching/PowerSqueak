*Presenter-Core
relayout

	paragraph wantsColumnBreaks: successor notNil.
	paragraph
		compose: text
		style: textStyle
		from: self startingIndex
		in: self container.
	wrapFlag ifFalse:
		["Was given huge container at first... now adjust"
		paragraph adjustRightXDownTo: paragraph caretWidth].
	paragraph focused: (self currentHand keyboardFocus == self).

	paragraph
		caretColor: self caretColor;
		selectionColor: self selectionColor;
		unfocusedSelectionColor: self unfocusedSelectionColor.
	
	self fit.