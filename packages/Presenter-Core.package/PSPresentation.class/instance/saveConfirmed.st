saving
saveConfirmed

	| directory |
	directory := self defaultDirectory.
	
	directory := self askForPresentationDirectoryIn: directory.
	directory ifNil: [^ self].
	self saveSlidesIn: directory.
	self saveLayoutsIn: directory.