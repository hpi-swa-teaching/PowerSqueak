stepping and presenter
step

	self model presentationMode ifFalse: [^self].
	(self extent ~= self world extent 
		or: [self position ~= (0@0)])
		ifTrue: [self occupyWorld: self world]