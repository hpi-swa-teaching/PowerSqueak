running
tearDown 

	self world submorphsDo: [:each | each abandon].
	self hand submorphsDo: [:each | each abandon].
	super tearDown