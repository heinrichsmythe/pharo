"
I am the adapter used to link a RadioButtonPresenter with a CheckboxMorph (which can also act as a radio button)
"
Class {
	#name : #MorphicRadioButtonAdapter,
	#superclass : #AbstractMorphicAdapter,
	#category : #'Spec-MorphicAdapters-Base'
}

{ #category : #factory }
MorphicRadioButtonAdapter >> buildWidget [
	
	| radioButton |

	radioButton := CheckboxMorph new
		on: self selected: #state changeSelected: #state:;
		getEnabledSelector: #enabled;
		label: self label;
		labelClickable: self labelClickable;
		beRadioButton;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setBalloonText: self help;
		dragEnabled: self dragEnabled;
		dropEnabled: self dropEnabled;
		yourself.
		
	self presenter whenLabelChangedDo: [ :newLabel | radioButton label: newLabel ].
	self presenter whenChangedDo: [ radioButton updateSelection ].
	^ radioButton
]

{ #category : #simulating }
MorphicRadioButtonAdapter >> clicked [
	
	widget toggleSelected
]

{ #category : #'widget API' }
MorphicRadioButtonAdapter >> label [

	^ self model label
]

{ #category : #'widget API' }
MorphicRadioButtonAdapter >> labelClickable [

	^ self model labelClickable
]

{ #category : #'widget API' }
MorphicRadioButtonAdapter >> state [

	^ self model state
]

{ #category : #'widget API' }
MorphicRadioButtonAdapter >> state: aBoolean [

	^ self model state: aBoolean
]
