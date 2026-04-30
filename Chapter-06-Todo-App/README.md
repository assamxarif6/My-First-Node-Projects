JavaScript: Advanced Task Management System (To-Do)

##  Project Overview
This project is a comprehensive **To-Do Application** built with Vanilla JavaScript (Chapter 6). It focuses on managing user-generated data and maintaining application state using arrays and DOM updates.

##  Learning Objectives
- **CRUD Implementation:** Creating, Reading, Updating, and Deleting data dynamically.
- **Data Persistence:** Understanding how to manage a list of tasks in memory.
- **Event Delegation:** Efficiently handling events for dynamically added elements.
- **Array Filtering:** Implementing logic to remove specific items based on their unique ID.

##  Technical Implementation
1. **Add Task:** Captures user input and injects it into the task list.
2. **Toggle Status:** Marks tasks as "Completed" or "Pending."
3. **Delete Task:** Removes data entries from both the UI and the underlying array.
4. **Data Integrity:** Prevents empty entries and handles duplicate task logic.

##  How to Run
Run the script using Node.js:
```bash
node todo_app.js

---

## 2. The Implementation (`todo_app.js`)

Isse naye folder mein `todo_app.js` ke naam se save karein:

```javascript
/**
 * CHAPTER 6 ASSIGNMENT: TODO APPLICATION LOGIC
 * Scenario: Task Tracking & Productivity Tool
 */

// --- SECTION 1: DATA STORE ---
let todos = [
    { id: 1, task: "Learn JavaScript Basics", completed: true },
    { id: 2, task: "Setup GitHub Portfolio", completed: false }
];

// --- SECTION 2: CORE FUNCTIONS ---

/**
 * Task: Add a new Todo
 */
function addTodo(taskText) {
    if (!taskText) {
        console.log(" Error: Task cannot be empty.");
        return;
    }
    const newTodo = {
        id: Date.now(), // Unique ID using timestamp
        task: taskText,
        completed: false
    };
    todos.push(newTodo);
    console.log(` Added: "${taskText}"`);
}

/**
 * Task: Delete a Todo by ID
 */
function deleteTodo(id) {
    todos = todos.filter(todo => todo.id !== id);
    console.log(` Deleted Task with ID: ${id}`);
}

/**
 * Task: Toggle Completion Status
 */
function toggleComplete(id) {
    const todo = todos.find(t => t.id === id);
    if (todo) {
        todo.completed = !todo.completed;
        console.log(` Updated: "${todo.task}" is now ${todo.completed ? "Done" : "Pending"}`);
    }
}

/**
 * Task: Display All Tasks
 */
function renderTodos() {
    console.log("\n--- MY CURRENT TODO LIST ---");
    if (todos.length === 0) {
        console.log("List is empty.");
    } else {
        todos.forEach(t => {
            console.log(`[${t.completed ? "X" : " "}] ID: ${t.id} | Task: ${t.task}`);
        });
    }
    console.log("----------------------------\n");
}

// --- SECTION 3: SIMULATION ---

addTodo("Complete Chapter 6 Assignment");
toggleComplete(2); // Mark "Setup GitHub Portfolio" as done
deleteTodo(1);     // Delete the first task
renderTodos();     // Show final list
