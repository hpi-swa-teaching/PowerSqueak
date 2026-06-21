layouts
openLayoutMenu

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self.
	self slideLayoutNames asSortedCollection do: [:aName | | layout item |
		layout := self presentation slideLayouts at: aName.
		item := PSLayoutMenuItem new
			contents: aName;
			target: self;
			selector: #createSlideFromLayout:;
			arguments: (Array with: layout);
			layout: layout;
			icon: (self layoutThumbnailFor: layout);
			yourself.
		menu addMorphBack: item].
	menu popUpInWorld.
	^ menu

