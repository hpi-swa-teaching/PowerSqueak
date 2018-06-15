filedirectory compatibility
fileNames

	^ (self subdirectories select: [:each | each isFile]) collect: [:each | each name]