/**
 * CHAPTER 5 ASSIGNMENT: INTERACTIVE QUIZ LOGIC
 * Scenario: Professional Knowledge Assessment Tool
 */

// --- SECTION 1: QUESTION DATASET ---
const quizData = [
    {
        question: "Which keyword is used to declare a constant in JS?",
        a: "var", b: "let", c: "const", d: "assign",
        correct: "c"
    },
    {
        question: "What is the result of 2 + '2' in JavaScript?",
        a: "4", b: "22", c: "NaN", d: "Error",
        correct: "b"
    },
    {
        question: "Which company developed JavaScript?",
        a: "Microsoft", b: "Google", c: "Netscape", d: "Oracle",
        correct: "c"
    }
];

// --- SECTION 2: APP STATE ---
let currentQuestionIndex = 0;
let score = 0;

// --- SECTION 3: CORE LOGIC ---

/**
 * Task: Validate the user's answer
 */
function submitAnswer(userChoice) {
    const currentQuizData = quizData[currentQuestionIndex];

    if (userChoice === currentQuizData.correct) {
        score++;
        console.log("✅ Correct Answer!");
    } else {
        console.log(`❌ Wrong! The correct answer was: ${currentQuizData.correct}`);
    }

    // Move to next question
    currentQuestionIndex++;

    if (currentQuestionIndex < quizData.length) {
        loadNextQuestion();
    } else {
        showFinalResult();
    }
}

function loadNextQuestion() {
    console.log("----------------------------");
    console.log(`Question ${currentQuestionIndex + 1}: ${quizData[currentQuestionIndex].question}`);
}

function showFinalResult() {
    console.log("============================");
    console.log("       QUIZ COMPLETED       ");
    console.log(`Your Final Score: ${score}/${quizData.length}`);
    console.log("============================");
}

// --- SECTION 4: SIMULATING THE QUIZ ---
console.log("--- Starting Professional Quiz ---");
loadNextQuestion();

// Simulating user clicks
submitAnswer("c"); // Question 1
submitAnswer("b"); // Question 2
submitAnswer("a"); // Question 3 (Wrong)
