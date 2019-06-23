slide loading
loadSlideFromDirectory: aDirectory

	| slide instanceVar|
	slide := self presentation createSlideBack.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	(aDirectory / 'metadata.dict') exists ifTrue:
	[instanceVar := Object readFrom: (aDirectory readOnlyFileNamed: 'metadata.dict').
	self update:slide with: instanceVar.].
	^ slide