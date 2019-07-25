A PSScriptingTool lets a user define custom scripts that are then executed by
a aPSContentContainer. It should be opened using openFor: aMorph.
The script is checked for syntax upon saving and put into the receiver's
properties.

Instance Variables
	code:		<Text>
	codePane:		<PluggableTextMorph>
	receiver:		<Morph>
	selectedIndex:		<Integer>
	selectedMethod:		<Symbol>

code
	- The scipt is put into code upon saving.

codePane
	- The widget where the user is able to insert the script. Needed to hide/unhide
		it when selecting the method.
receiver
	- The morph to save the script in
