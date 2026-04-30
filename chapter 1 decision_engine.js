CHAPTER 3 ASSIGNMENT: FIREBASE CLOUD INTEGRATION
 * Scenario: Cloud-Based Asset/Inventory Tracker
 */

// Import the functions you need from the SDKs
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-app.js";
import { getFirestore, collection, addDoc, getDocs, deleteDoc, doc } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-firestore.js";

// --- SECTION 1: CONFIGURATION ---
// Replace with your actual Firebase project configuration
const firebaseConfig = {
  apiKey: "YOUR_API_KEY",
projectId: "your-app-id",
// ...
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

// --- SECTION 2: ASYNC OPERATIONS (CRUD) ---

/**
 * Task: Add a new Financial Asset to the Cloud
 */
async function addAsset(assetName, assetValue) {
    try {
        const docRef = await addDoc(collection(db, "inventory"), {
            name: assetName,
            value: Number(assetValue),
            timestamp: new Date()
        });
        console.log("SUCCESS: Asset added with ID: ", docRef.id);
    } catch (error) {
        console.error("ERROR: Could not add asset: ", error);
    }
}

/**
 * Task: Fetch all assets and display them
 */
async function fetchInventory() {
    console.log("FETCHING: Accessing Cloud Database...");
    const querySnapshot = await getDocs(collection(db, "inventory"));
    
    querySnapshot.forEach((doc) => {
        const data = doc.data();
        console.log(`ID: ${doc.id} | Asset: ${data.name} | Value: $${data.value}`);
    });
}

// --- SECTION 3: EXECUTION ---
// Example usage:
// addAsset("Office MacBook Pro", 2500);
// fetchInventory();

export { addAsset, fetchInventory };
