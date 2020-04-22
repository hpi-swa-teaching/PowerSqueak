filedirectory compatibility
/ aString

	^ self subdirectories 
		detect: [:each | each name = aString]
		ifNone: [(self class named: aString)
						exists: false;
						yourself]