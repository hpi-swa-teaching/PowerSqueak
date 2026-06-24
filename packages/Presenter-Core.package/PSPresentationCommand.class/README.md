A PSPresentationCommand is an abstract command for undoable changes to a presentation.
It captures the presentation state before and after executing a concrete presentation change.

Instance Variables
	afterState:		<PSPresentationState>
	beforeState:	<PSPresentationState>
	executed:		<Boolean>
	tool:			<PSPresentationTool>

afterState
	- The presentation state after the command was executed

beforeState
	- The presentation state before the command was executed
	
executed
	- Indicates whether the command has already been executed once

tool
	- The presentation tool whose presentation is changed by this command