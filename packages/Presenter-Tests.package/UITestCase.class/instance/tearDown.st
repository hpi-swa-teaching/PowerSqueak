running
tearDown 

	self world submorphsDo: [:each | each abandon].
	super tearDown