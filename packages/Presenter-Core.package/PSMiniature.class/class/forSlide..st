instance creation
forSlide: aPSSlide

	| miniature |
	miniature := self new 
		slide: aPSSlide;
		yourself.
	aPSSlide isHidden
		ifTrue: [miniature hideSlide].
	^ miniature