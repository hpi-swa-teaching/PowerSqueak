slide loading
loadSlideFromDirectory: aDirectory

	| slide instanceVar|
	slide := self presentation createSlideBack.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	(aDirectory / 'metadata.dict') exists ifTrue:
	[instanceVar := Object readFrom: (aDirectory readOnlyFileNamed: 'metadata.dict').
	"instanceVar := FileStream oldFileNamed: (aDirectory / ) fullName do: [:in | Object readFrom: in]."
	self update:slide with: instanceVar.].
	^ slide