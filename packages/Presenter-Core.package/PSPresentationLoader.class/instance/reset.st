initialize-release
reset

	self
		fileErrors: Dictionary new;
		slideErrors: Dictionary new;
		missingMorphErrors: Dictionary new;
		layoutsDirectoryMissing: false;
		presentation: PSPresentation new