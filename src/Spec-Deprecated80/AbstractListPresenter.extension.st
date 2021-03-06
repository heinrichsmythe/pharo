Extension { #name : #AbstractListPresenter }

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> doubleClickAction: aBlockClosure [ 
	
	self
		deprecated: 'Use whenActivatedDo: instead'
		transformWith: '`@receiver whenActivatedDo: `@argument'
						-> '`@receiver doubleClickAction: `@argument'.
	
	self whenActivatedDo: [ :sel | aBlockClosure value: sel selectedItem]
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> itemBeginsWithFilter [
	self deprecated: 'Use #enableItemBeginsWithFilter instead' transformWith: '`@receiver itemBeginsWithFilter' -> '`@receiver enableItemBeginsWithFilter'.
	self enableItemBeginsWithFilter
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> itemSubstringFilter [
	self deprecated: 'Use #enableItemSubstringFilter instead' transformWith: '`@receiver itemSubstringFilter' -> '`@receiver enableItemSubstringFilter'.
	self enableItemSubstringFilter
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> listItems [
	
	self
		deprecated: 'Please use the #model instead'
		transformWith: '`@receiver listItems' 
						-> '`@receiver model shownItems'.	
	^ self model shownItems
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> menu [
	"Return the block used to defined the menu"
	self 
		deprecated: 'Use #contextMenu instead.' 
		transformWith: '`@receiver menu' 
						-> '`@receiver contextMenu'.
	
	^ self contextMenu
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> menu: aBlock [
	"Set the block used to defined the menu"

	self
		deprecated:
			'Use #contextMenu: instead. The old way to create a MenuPresenter was this method taking a MenuMorph as parameter. This will not work with other backend and will be totally removed in Pharo7. Now you should use #contextMenu takin a MeruPresenter (or a block returning a menu presenter) as parameter.'
		on: '2019-03-07'
		in: #Pharo8.
	self
		contextMenu: [ aBlock
				cull:
					(MenuMorph new
						defaultTarget: self;
						yourself)
				cull: false ]
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> menu: aBlock shifted: aBoolean [
	self
		deprecated:
			'Use #contextMenu: instead. The old way to create a MenuPresenter was this method taking a MenuMorph as parameter. This will not work with other backend and will be totally removed in Pharo7. Now you should use #contextMenu takin a MeruPresenter (or a block returning a menu presenter) as parameter.'
		on: '2019-03-07'
		in: #Pharo8.
	self
		contextMenu: [ aBlock
				cull:
					(MenuMorph new
						defaultTarget: self;
						yourself)
				cull: true ]
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> resetSelection [
	"Unselect every items"

	self
		deprecated: 'Please use #unselectAll instead'
		transformWith: '`@receiver resetSelection' 
						-> '`@receiver unselectAll'.

	self unselectAll
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> selectedIndex [
	"Return the index of the selected item
	In the case of a multiple selection list, it returns the last selected item"
	
	self
		deprecated: 'Use the #selection object instead. This method assumes single selection'
		transformWith: '`@receiver selectedIndex'
						-> '`@receiver selection selectedIndex'.
	
	^  self selection selectedIndex
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> selectedIndex: anIndex [

	"Set the index of the item you want to be selected"
	self
		deprecated: 'Use #selectIndex: instead'
		transformWith: '`@receiver selectedIndex: `@arg'
						-> '`@receiver selectIndex: `@arg'.
	
	self selectIndex: anIndex
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> selectedIndexes [
	self
		deprecated: 'Use the #selection object instead. This method assumes multiple selection'
		transformWith: '`@receiver selectedIndexes'
						-> '`@receiver selection selectedIndexes'.

	^  self selection selectedIndexes
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> selectedItem [
	"Return the selected item.
	In the case of a multiple selection list, it returns the last selected item"
	
	self
		deprecated: 'Use the #selection object instead. This method assumes single selection'
		transformWith: '`@receiver selectedItem'
						-> '`@receiver selection selectedItem'.
	
	^ self selection selectedItem
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> selectedItem: anItem [
	"Set the item you want to be selected"

	self
		deprecated: 'Use #selectItem: instead'
		transformWith: '`@receiver selectedItem: `@arg'
						-> '`@receiver selectItem: `@arg'.

	self selectItem: anItem
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> setIndex: anIndex [
	self
		deprecated: 'Use #selectIndex: instead'
		transformWith: '`@receiver setIndex: `@arg' -> '`@receiver selectIndex: `@arg'.
	self selectIndex: anIndex
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> setIndexes: aCollectionOfIndexes [
	"Set the indexexs of the selected items in case of multiple selection"
	self
		deprecated: 'Use the #selection object instead. This method assumes multiple selection'
		transformWith: '`@receiver setIndexes: `@arg'
						-> '`@receiver selection selectIndexes: `@arg'.

	self selection selectIndexes: aCollectionOfIndexes
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> setSelectedIndex: anIndex [
	self
		deprecated: 'Use #selectedIndex: instead'
		transformWith:
			'`@receiver setSelectedIndex: `@argument'
				-> '`@receiver selectedIndex: `@argument'.
	^ self selectIndex: anIndex
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> setSelectedItem: anIndex [
	self
		deprecated: 'Use #selectedItem: instead'
		transformWith:
			'`@receiver setSelectedItem: `@argument'
				-> '`@receiver selectedItem:`@argument'.
	^ self selectItem: anIndex
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenListChanged: aBlock [
	"Specify a block to value after the contents of the list has changed"
	"Basically when you set a new list of items"
	"<api: #event>"
	self
		deprecated: 'Use #whenModelChangedDo: instead'
		transformWith: '`@receiver whenListChanged: `@argument'
						-> '`@receiver whenModelChangedDo: `@argument'.
	
	self whenModelChangedDo: aBlock
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenMultiSelectionChanged: aBlock [
	"Set a block to value when the multiSelection value has changed"
	self deprecated: 'Should not use'
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenSelectedIndexChangedDo: aBlock [
	"Set a block to value when the selection index has changed"
	
	self
		deprecated: 'Use #selection whenChangedDo: instead'
		transformWith: '`@receiver whenSelectedIndexChangedDo: `@argument'
						-> '`@receiver selection whenChangedDo: [ :selection | `@argument value: selection selectedIndex ]'.

	^ self  selection whenChangedDo: [ :selection | aBlock value: selection selectedIndex ]
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenSelectedItemChanged: aBlock [
	self
		deprecated: 'Use #whenSelectedItemChangedDo: instead'
		transformWith:
			'`@receiver whenSelectedItemChanged: `@argument'
				-> '`@receiver whenSelectedItemChangedDo: `@argument'.
	^ self
		whenSelectionChangedDo: [ :selection | aBlock cull: selection selectedItem ]
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenSelectedItemChangedDo: aBlock [
	"Set a block to value when the select item is changed"

	self
		deprecated: 'Use #whenSelectionChangedDo: instead'
		transformWith: '`@receiver whenSelectedItemChangedDo: `@argument'
						-> '`@receiver whenSelectionChangedDo: [ :selection | `@argument cull: selection selectedItem ]'.
	
	self selection whenChangedDo: [ :selection | aBlock cull: selection selectedItem ]
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenSelectedItemsChanged: aBlock [
	"Set a block to value when the select item is changed"
	
	self
		deprecated: 'Use #whenSelectionChangedDo: instead'
		transformWith: '`@receiver whenSelectedItemsChanged: `@argument'
						-> '`@receiver whenSelectionChangedDo: [ :selection | `@argument cull: selection selectedItems ]'.

	self selection whenChangedDo: [ :selection | aBlock cull: selection selectedItems ]
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenSelectionChanged: aBlock [
	
	self
		deprecated: 'Use #whenSelectionChangedDo: instead'
		transformWith: '`@receiver whenSelectionChanged: `@argument'
						-> '`@receiver whenSelectionChangedDo: `@argument'.
	^ self whenSelectionChangedDo: aBlock
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenSelectionIndexChanged: aBlock [
	
	self
		deprecated: 'Use #selection whenChangedDo: instead'
		transformWith: '`@receiver whenSelectionIndexChanged: `@argument'
						-> '`@receiver selection whenChangedDo: [ :selection | `@argument value: selection selectedIndex ]'.
	^ self  selection whenChangedDo: [ :selection | aBlock value: selection selectedIndex ]
]

{ #category : #'*Spec-Deprecated80' }
AbstractListPresenter >> whenSelectionIndexesChanged: aBlock [
	"Set a block to value when the selection index has changed"
	
	self
		deprecated: 'Use #whenSelectionChangedDo: instead'
		transformWith: '`@receiver whenSelectionIndexesChanged: `@argument'
						-> '`@receiver whenSelectionChangedDo: [ :selection | `@argument value: selection selectedIndexes ]'.
	
	self whenSelectionChangedDo: [ :selection | aBlock value: selection selectedIndexes ].
]
