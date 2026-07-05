A PSScriptingTool lets a user define custom scripts that are then executed by a PSContentContainer. 
It is opened for a receiver morph, lets the user edit script code, checks syntax on saving and stores the scripts in the receiver's properties.

Instance Variables
	code:		<Text>
	codePane:		<PluggableTextMorph>
	receiver:		<Morph>
	selectedIndex:		<Integer>
	selectedMethod:		<Symbol>

code
	- The script source currently edited by the user

codePane
	- The text widget in which the user edits the script

receiver
	- The morph whose scripts are edited

selectedIndex
	- The index of the currently selected script/action entry

selectedMethod
	- The selector of the script/action currently selected for editing
