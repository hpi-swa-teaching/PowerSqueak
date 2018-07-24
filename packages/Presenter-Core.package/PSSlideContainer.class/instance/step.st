stepping and presenter
step

	self isInPresentationMode ifFalse: [^self].
	self occupiesWorld 
		ifFalse: [self occupyWorld: self world]