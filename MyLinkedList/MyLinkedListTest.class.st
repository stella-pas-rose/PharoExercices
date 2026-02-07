Class {
	#name : 'MyLinkedListTest',
	#superclass : 'TestCase',
	#category : 'MyLinkedList',
	#package : 'MyLinkedList'
}

{ #category : 'initialization' }
MyLinkedListTest >> testInitializeLinkedList [

	| l |
	l := MyLinkedList new.
	self assert: l isEmpty.
	self assert: l size equals:0.
]

{ #category : 'tests' }
MyLinkedListTest >> testNextSet [ 
	| n m |
	n := MyNode new.
	m := MyNode new.
	self assert: n next equals: nil.
	n next: m.
	self assert: n next equals: m
	
]

{ #category : 'tests' }
MyLinkedListTest >> testValueSet [ 
	| n |
	n := MyNode new.
	n value: 7.
	self assert: n value equals: 7
]
