testing
occupiesWorld

	^ self extent = self world extent 
		and: [self position = (0@0)]