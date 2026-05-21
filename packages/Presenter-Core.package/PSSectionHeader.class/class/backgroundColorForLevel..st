constants
backgroundColorForLevel: anInteger

	^ Color gray: ((0.9 - ((anInteger - 1) * 0.07)) max: 0.62)
