as yet unclassified
isInteractive

	 ^ (self slideContainer isInteractive and: [self slideContainer isInPresentationMode]) 
			or: [self hasHandles]