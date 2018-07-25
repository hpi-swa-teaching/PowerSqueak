instance creation
newPng

	^ self new		
		name: 'test.png';
		collection: self examplePngBytes;
		yourself