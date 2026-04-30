# My-First-Node-Projects
JavaScript Foundations: User Profile & Financial Logic System

#  Project Overview
This project is a technical demonstration of JavaScript fundamentals covered in Chapter 1. It showcases the practical application of variable declaration, data type management, and basic arithmetic operations within a real-world context (Personal Finance Management).

# Learning Objectives
- **Variable Scoping:** Implementing `const` for immutable data and `let` for mutable state.
- **Data Structures:** Working with Primitive types (`String`, `Number`, `Boolean`).
- **Template Literals:** Utilizing ES6 string interpolation for dynamic output.
- **Arithmetic Logic:** Performing basic calculations to derive financial insights.

# Technical Implementation
The script simulates a user profile system that:
1. Stores core user identity data.
2. Processes monthly financial inflows and outflows.
3. Calculates net savings and updates the total account balance.
4. Outputs a formatted report to the console.



## 2. The Implementation (`script.js`)

*This code is written with clean-code principles, including professional comments and logical naming conventions.*

```javascript
/**
 * CHAPTER 1 ASSIGNMENT: VARIABLE LOGIC & DATA TYPES
 * Goal: Build a foundational Profile & Budgeting System.
 */

// --- SECTION 1: USER IDENTITY (Constants) ---
// We use 'const' for data that should not be reassigned during execution.
const userID = "USR-99210";
const fullName = "Muhammad Assam";
const accountCreationDate = "2026-04-30";

// --- SECTION 2: DYNAMIC STATE (Mutable Variables) ---
// We use 'let' for values that will change as the program logic runs.
let accountStatus = "Active"; // String
let isPremiumMember = true;   // Boolean
let currentBalance = 5000.00; // Number (Float)

// --- SECTION 3: FINANCIAL DATA PROCESSING ---
let monthlySalary = 3500.50;
let monthlyRent = 1200.00;
let utilityBills = 450.75;
let miscellaneousExpenses = 300.00;

// Logic: Calculate total expenses and net savings
let totalExpenses = monthlyRent + utilityBills + miscellaneousExpenses;
let netMonthlySavings = monthlySalary - totalExpenses;

// Logic: Comparison Operator (Check if user is within budget)
let isBudgetHealthy = netMonthlySavings > 500; 

// --- SECTION 4: UPDATING STATE ---
// Incrementing the current balance with this month's savings
currentBalance += netMonthlySavings;

// --- SECTION 5: PROFESSIONAL DATA REPORTING ---
console.log("==========================================");
console.log(`SYSTEM REPORT: ${fullName} (${userID})`);
console.log(`STATUS: ${accountStatus.toUpperCase()}`);
console.log("==========================================");

console.log(`Initial Statement Balance: $${(currentBalance - netMonthlySavings).toFixed(2)}`);
console.log(`Total Expenses this Month: $${totalExpenses.toFixed(2)}`);
console.log(`Net Savings Realized:     $${netMonthlySavings.toFixed(2)}`);

console.log("------------------------------------------");
console.log(`Is Budget Health Optimal?  ${isBudgetHealthy ? "YES" : "NO"}`);
console.log(`Final Updated Balance:    $${currentBalance.toFixed(2)}`);
console.log("==========================================");
