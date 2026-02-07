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
