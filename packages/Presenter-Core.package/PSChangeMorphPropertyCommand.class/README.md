A PSChangeMorphPropertyCommand represents an undoable change of one property on an object.

Instance Variables
	target:			<Object>
	getterSelector:	<Symbol>
	setterSelector:	<Symbol>
	oldValue:		<Object>
	newValue:		<Object>

target
	- The object whose property is changed

getterSelector
	- The selector used to read the property's current value before executing the command

setterSelector
	- The selector used to apply the old or new property value

oldValue
	- The value of the property before the command was executed

newValue
	- The value that should be applied when the command is executed