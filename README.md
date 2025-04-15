# 🍳 FlavorLens

**FlavorLens** is an AI-powered Recipe & Meal Planner app, developed as part of the **Mobile Application Design Lab** course at **Daffodil International University**.

This app leverages the **Gemini API** to generate creative recipes, analyze nutritional content (via **Calorie AI**), and deliver personalized weekly meal plans based on user preferences.

---

## 🚀 Features

### ✅ Login / Sign-Up
- Secure authentication for personalized access.
- Firebase Authentication (Currently used mock signup and login; as it was showing errors)

---

### ✅ Recipe Generation
- 📸 **Image Input:** Snap or upload ingredient photos for recipe suggestions.
- 🎙️ **Voice Input:** Speak your recipe request (powered by **Whisper** speech-to-text).
- 💬 **Text Input:** Type ingredient names or custom requests.
- ⚡ **Dietary Filters:** Choose from:
  - None
  - Keto
  - Halal
  - High-Protein
  - Nutritious
- 🍽️ **AI Output:**
  - Auto-generated recipe title
  - Ingredients
  - Steps
  - Nutrition info (visualized as a pie chart via **Calorie AI**)
  - AI-generated recipe images

---

### ✅ Weekly Meal Planner
- 🎯 Personalized 7-day meal plan based on selected dietary filters.
- 🧠 Answer 10 MCQs to fine-tune AI meal suggestions.
- 🗓️ Export your meal plan as a **PDF**.

---

### ✅ Profile Section
- 📊 Tracks the total number of recipes generated.
- 📝 Displays a list of previously generated recipe titles.

---

### ✅ About Section
- ℹ️ App information and developer team credits.

---

## 🧠 Tech Stack

| Technology           | Usage                                      |
|-----------------------|--------------------------------------------|
| Flutter               | UI Development                            |
| Provider              | State Management                          |
| SharedPreferences     | Local Storage                             |
| Gemini API            | AI Recipe, Meal Plan, and Nutrition Generation |
| Image Picker          | Camera / Gallery Integration              |
| Whisper API           | Voice Input Transcription                 |
| Record                | Audio Recording                           |
| Printing Package      | PDF Meal Plan Export                      |

---

## 👨‍💻 Development Team

| Name                     | ID            |
|---------------------------|---------------|
| Md Mobashir Hasan         | 221‑15‑5405   |
| Md Mehedi Hasan Nayeem    | 221‑15‑5049   |
| Tanvirul Islam            | 221‑15‑5386   |
| Azmira Shekh              | 221‑15‑5569   |
| Md. Jahid Hasan           | 221‑15‑5388   |

---

## 🧑‍🏫 Instructor

**Md. Mezbaul Islam Zion (MIZ)**  
Lecturer, Daffodil International University

---

## 📂 Project Resources

| Resource                 | Link / Location                     |
|---------------------------|-------------------------------------|
| 📸 App Screenshots        | [https://drive.google.com/drive/folders/1w3XcXI4vGRqAldWyJHheLgIxmbOXx2lC?usp=sharing]     |
| 🎬 Demo Video             | [https://drive.google.com/file/d/1jrTd853z9kf44e5Unitqcu_cyEe4J0aI/view?usp=sharing] |
| 📄 Report Link            | [https://drive.google.com/file/d/1ETFPbFHTvxwbgmsNH08AuIZc5_T-78l5/view?usp=sharing]              |
| 🔗 Release APK (Drive)    | [https://drive.google.com/file/d/1eDUDT7nRswrmiRH-KRWp5k7GWTO7E55N/view?usp=sharing]      |

---

## ⚠️ Notes

- 🎯 This is a **student project** designed for **Android devices only**.
- ☁️ Currently **no cloud-based database** — uses local storage.
- 🔒 API keys are securely handled and **never hardcoded** in the repository.

---

