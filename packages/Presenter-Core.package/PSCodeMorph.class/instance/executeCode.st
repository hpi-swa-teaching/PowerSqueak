run button
executeCode
	| code result |
	
	code := self textMorph text string.
	[result := (Compiler evaluate: code) printString]
		on: Error
		do: [:err | result := (err messageText ifEmpty: [err class name]) asString].
	self showResult: result.