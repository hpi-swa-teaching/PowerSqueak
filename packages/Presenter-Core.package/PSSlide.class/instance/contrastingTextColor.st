styling
contrastingTextColor

	^ self isDark
		ifTrue:  [Color white]
		ifFalse: [Color black]
