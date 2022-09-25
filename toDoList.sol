// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Todos {
    struct Todo { // Initializing a struct for To Do's.
        string text; 
        bool completed;
    }

    Todo[] public todos; //Initializing a todos array to store Todo struct type items.

    function create(string calldata _text) public { //Here we are creating a function to add a new Todo to todos array.
        todos.push(Todo(_text, false));
    }

    function get(uint _index) public view returns (string memory text, bool completed) { //Creating a function to get the text and completed properties of Todo.
        return (todos[_index].text, todos[_index].completed);
    }

    function updateText(uint _index, string calldata _text) public { //Creating a Function to update the text of Todo.
        todos[_index].text = _text;
    }

    function toggleCompleted(uint _index) public { //Creating a Function to install completed of Todo.
        todos[_index].completed = !todos[_index].completed;
    }
}
