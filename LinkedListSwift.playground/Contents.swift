class Node<T: Equatable> {
	var number: T?;
	var nextNode: Node<T>?;
	init(){
		number = nil;
		nextNode = nil;
	}
	
	deinit{ print("node \(number!) is deinitialized"); }
}

class LinkedList<T: Equatable> {
	var node: Node<T>;
	init(){
		node = Node<T>();
	}
	
	deinit{ print("\nlist is deinitialized"); }
	
	//Function to shift middle node and rearrange list
	func shiftList() {
		let originalStartNode: Node<T>! = self.node;
		//var current: Node<T>! = self.node;
		var nodeAfterMid: Node<T>! = self.node;
		var nextNextNode: Node<T>! = self.node;
		while(nextNextNode != nil){
			nextNextNode = nextNextNode.nextNode?.nextNode;
			nodeAfterMid = nodeAfterMid.nextNode;
		}

		//call function to reverse list
		reverse();
		
		//rearrange list
		let previous: Node<T>! = self.node;
		self.node = nodeAfterMid.nextNode!;
		nodeAfterMid.nextNode = nil;
		originalStartNode.nextNode = previous;
	}
	
	//function to reverse list
	func reverse() {
		var previous: Node<T>! = self.node;
		var current: Node<T>! = self.node.nextNode!;
		var next: Node<T>! = current.nextNode!;
		previous.nextNode = nil;
		while (next != nil) {
			current.nextNode = previous;
			previous = current;
			current = next;
			next = next.nextNode;
		}
		current.nextNode = previous;
		self.node = current;
	}
	
	//function to insert a new node
	func insert(value: T) {
		//find to see if empty list
		if (self.node.number == nil) {
			self.node.number = value;
		}
		else {
			//find the last node without a next value
			var lastNode = self.node;
			while lastNode.nextNode != nil {
				lastNode = lastNode.nextNode!;
			}
			//once found, create a new node and connect the linked list
			let newNode = Node<T>();
			newNode.number = value;
			lastNode.nextNode = newNode;
		}
	}
	
	//function to print all nodes
	func printAllKeys() {
		var current: Node<T>! = self.node;
		while (current != nil) {
			print("-->[\(current.number!)]", terminator:"");
			current = current.nextNode;
		}
		print("");
	}
}

let listLimit:Int = 11;
var myList:LinkedList<Int>? = LinkedList<Int>();
for index in 1...listLimit{
	myList?.insert(value: index);
}
print("-----List Before Rearranging-----");
myList?.printAllKeys();
myList?.shiftList();
print("\n-----List After Rearranging-----");
myList?.printAllKeys();
myList = nil;
