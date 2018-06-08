private
forFontInStyle: aTextStyle do: aBlock

	aBlock value: (aTextStyle fontOfSize: self actualTextSize)