filedirectory compatibility
/ aString

	^ self subdirectories 
		detect: [:each | each name = aString]
		ifNone: [(MockFileDirectory named: aString)
						exists: false;
						yourself]