execution
execute

	self oldColor ifNil: [self oldColor: self slide color].
	self slide basicColor: self newColor