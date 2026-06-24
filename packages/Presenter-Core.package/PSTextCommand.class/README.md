A PSTextCommand is an abstract command for undoable changes to a PSTextMorph.
It captures the text state before and after executing a concrete text change.

Instance Variables
	afterState:		<PSTextState>
	beforeState:	<PSTextState>
	executed:		<Boolean> 
	textMorph:		<PSTextMorph>

afterState
	- The text state after the command was executed

beforeState
	- The text state before the command was executed
	
executed
	- Indicates whether the command has already been executed once

textMorph
	- The text morph changed by this command