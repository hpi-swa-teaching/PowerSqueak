instance creation
on: aPSContentContainer

	^ self new
		container: aPSContentContainer;
		location: (PSContentLocation of: aPSContentContainer);
		yourself