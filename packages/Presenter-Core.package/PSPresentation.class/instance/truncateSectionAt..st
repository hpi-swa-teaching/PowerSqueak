collection behaviour
truncateSectionAt: aPSSlide

	| section index previousSlide |
	index := self indexOf: aPSSlide.
	section := self sectionOfSlideAt: index.
	section ifNil: [^ self].
	section firstSlide == aPSSlide ifTrue: [^ self].
	previousSlide := self slides at: index - 1 ifAbsent: [section firstSlide].
	section lastSlide: previousSlide
