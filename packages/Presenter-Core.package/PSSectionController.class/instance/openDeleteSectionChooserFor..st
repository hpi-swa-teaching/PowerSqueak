section deletion
openDeleteSectionChooserFor: aSlide

	| section choice |
	section := self presentation sectionStartingAt: aSlide.
	section ifNil: [^ self].
	((self presentation directChildSectionsOf: section) isEmpty
		and: [(self presentation slideCountOfSection: section) <= 1])
			ifTrue: [
				self presentation promoteChildrenOfSection: section.
				^ self miniatureController updateSlideMiniatures].
	choice := UIManager default
		chooseFrom: #('Delete section and all its contents' 'Keep contents (promote to parent)' 'Cancel')
		values: #(#cascade #promote #cancel)
		title: 'Delete section "' , section name , '"'.
	self deleteSection: section choice: (choice ifNil: [#cancel])