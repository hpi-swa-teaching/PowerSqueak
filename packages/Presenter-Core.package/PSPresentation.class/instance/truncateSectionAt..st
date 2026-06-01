collection behaviour
truncateSectionAt: aPSSlide

	| section index previousSlide |
	section := self sectionOfSlideAt: (self indexOf: aPSSlide).
	section ifNil: [^ self].
	section firstSlide == aPSSlide ifTrue: [^ self].
	index := self indexOf: aPSSlide.
	previousSlide := self slides at: index - 1 ifAbsent: [section firstSlide].
	section lastSlide: previousSlide
