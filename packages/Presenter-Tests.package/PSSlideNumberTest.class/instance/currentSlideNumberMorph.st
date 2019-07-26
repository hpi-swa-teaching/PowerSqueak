accessing
currentSlideNumberMorph
	"We assume that there are no other PSTextMorphs in that Test"
	^ self tool currentSlide findDeeplyA: PSTextMorph
