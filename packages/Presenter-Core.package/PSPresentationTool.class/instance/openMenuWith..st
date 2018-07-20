menu bar
openMenuWith: aCollection

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self.
	aCollection do: [:each | menu add: each first action: each second].
	menu popUpInWorld