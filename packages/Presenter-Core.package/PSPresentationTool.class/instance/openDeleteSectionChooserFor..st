sections
openDeleteSectionChooserFor: aSlide

	| section choice |
	section := self presentation sectionStartingAt: aSlide.
	section ifNil: [^ self].
	((self presentation directChildSectionsOf: section) isEmpty
		and: [(self presentation slideCountOfSection: section) <= 1])
			ifTrue: [
				self presentation promoteChildrenOfSection: section.
				^ self updateSlideMiniatures].
	choice := UIManager default
		chooseFrom: #('Delete section and all its contents' 'Keep contents (promote to parent)')
		values: #(#delete #promote)
		title: 'Delete section "' , section name , '"'.
	choice = #delete
		ifTrue: [self presentation deleteSectionAndContents: section].
	choice = #promote
		ifTrue: [self presentation promoteChildrenOfSection: section].
	self updateSlideMiniatures
