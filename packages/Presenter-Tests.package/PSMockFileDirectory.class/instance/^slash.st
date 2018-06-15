filedirectory compatibility
/ aString

	^ self subdirectories 
		detect: [:each | each name = aString]
		ifNone: [(PSMockFileDirectory named: aString)
						exists: false;
						yourself]