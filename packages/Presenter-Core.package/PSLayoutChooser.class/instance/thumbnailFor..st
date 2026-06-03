building
thumbnailFor: aLayout
	"Struktur-Vorschau: zeichnet die Content-Rahmen des Layouts als Kaestchen,
	 ohne die Folie zu rendern (vermeidet relayout auf nicht-installierten Vorlagen)."

	| form extent |
	extent := self class thumbnailExtent.
	form := Form extent: extent depth: 32.
	form fillColor: (Color gray: 0.6).
	aLayout submorphsDo: [:container | | frame origin corner box |
		frame := container layoutFrame.
		frame ifNotNil: [
			origin := (frame leftFraction @ frame topFraction) * extent.
			corner := (frame rightFraction @ frame bottomFraction) * extent.
			box := origin asIntegerPoint corner: corner asIntegerPoint.
			form fill: (box insetBy: 1) fillColor: (Color gray: 0.85).
			form border: box width: 1 rule: Form over fillColor: Color gray]].
	^ ImageMorph new
		image: form;
		borderWidth: 1;
		borderColor: Color gray;
		yourself



