instance creation
forIndex: anInteger indent: anIndentLevel section: aPSSlideSectionOrNil

	^ self new
		insertionIndex: anInteger;
		indent: anIndentLevel;
		targetSection: aPSSlideSectionOrNil;
		yourself
