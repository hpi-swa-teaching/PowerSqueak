instance creation
on: aPSContentContainer from: aBeforeLocation to: anAfterLocation

	^ self new
		container: aPSContentContainer;
		beforeLocation: aBeforeLocation;
		afterLocation: anAfterLocation;
		yourself