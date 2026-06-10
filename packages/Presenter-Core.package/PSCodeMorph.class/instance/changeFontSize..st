styling
changeFontSize: aNumber
	"Note that this has the same code as 'selectionFontSize:'	PSTextMorph uses them differently"
	super changeFontSize: aNumber.
	self updateRunButton;
		changed.