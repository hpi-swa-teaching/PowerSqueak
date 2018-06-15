filedirectory compatibility
directoryNames

	^ (self subdirectories reject: [:each | each isFile]) collect: [:each | each name]