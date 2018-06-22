initialize-release
initializeSlideNumberMorph

	self slideNumberMorph: PSTextMorph new.
	self 
		setSlideNumberMorphContents: 6;
		addSlideNumberMorph.
	self slideNumberMorph owner 
		layoutFrame: (LayoutFrame fractions: (0.9 @ 0.9 corner: 1 @ 1))
	