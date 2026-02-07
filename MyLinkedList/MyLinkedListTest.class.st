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
	
]

{ #category : 'initialization' }
MyLinkedListTest >> testInitializeLinkedListWithNode [
	| l n|
	l := MyLinkedList new.
	n := MyNode new.
	n value: 5.
	l first: n.
	self assert: l first value equals: 5.
]

{ #category : 'initialization' }
MyLinkedListTest >> testListAddNodeWhileNotBeingEmpty [
	| l n m|
	l := MyLinkedList new.
	n := MyNode new.
	n value: 5.
	l first: n.
	m:= MyNode new.
	m value: 7.
	l add: m.
	self assert: l first next value equals: 7.
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

{ #category : 'initialization' }
MyLinkedListTest >> testNotEmptyLinkedList [

	| l n |
	l := MyLinkedList new.
	n := MyNode new.
	n value: 7.
	l first: n.
	self assert: l isEmpty not.
]

{ #category : 'initialization' }
MyLinkedListTest >> testSizeOfList [
	| l n m|
	l := MyLinkedList new.
	n := MyNode new.
	self assert: l size equals: 0.
	l first: n.
	self assert: l size equals: 1.
	m:= MyNode new.
	l add: m.
	self assert: l size equals: 2.
]

{ #category : 'tests' }
MyLinkedListTest >> testValueSet [ 
	| n |
	n := MyNode new.
	n value: 7.
	self assert: n value equals: 7
]
