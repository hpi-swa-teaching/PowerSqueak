stepping and presenter
step

	self model presentationMode ifFalse: [^self].
	self occupiesWorld 
		ifFalse: [self occupyWorld: self world]