presentation mode
isInteractive

	 ^ (self slideContainer isInteractive and: [self slideContainer isInPresentationMode]) 
			or: [self hasHandles]