parsing
indicesFrom: aString

	| indices |
	indices := OrderedCollection new.
	(aString subStrings: (String with: self class listSeparator)) do: [:token |
		(self indicesFromToken: token) do: [:index |
			(indices includes: index) ifFalse: [indices add: index]]].
	^ indices asArray
