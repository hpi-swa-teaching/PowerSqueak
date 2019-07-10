stepping
step

	(self content hasProperty: #customStep)
	ifTrue: [(Compiler new evaluate: (self content valueOfProperty: #customStep)  for: self content) value: self slide]