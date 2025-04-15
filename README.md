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
## Directory Structure
Directory structure:
└── mohas8-flavor_lens_app/
    ├── README.md
    ├── analysis_options.yaml
    ├── pubspec.lock
    ├── pubspec.yaml
    ├── .metadata
    ├── android/
    │   ├── build.gradle.kts
    │   ├── gradle.properties
    │   ├── settings.gradle.kts
    │   ├── .gitignore
    │   ├── app/
    │   │   ├── build.gradle.kts
    │   │   └── src/
    │   │       ├── debug/
    │   │       │   └── AndroidManifest.xml
    │   │       ├── main/
    │   │       │   ├── AndroidManifest.xml
    │   │       │   ├── kotlin/
    │   │       │   │   └── com/
    │   │       │   │       └── example/
    │   │       │   │           └── flavor_lens_app/
    │   │       │   │               └── MainActivity.kt
    │   │       │   └── res/
    │   │       │       ├── drawable/
    │   │       │       │   └── launch_background.xml
    │   │       │       ├── drawable-v21/
    │   │       │       │   └── launch_background.xml
    │   │       │       ├── mipmap-hdpi/
    │   │       │       ├── mipmap-mdpi/
    │   │       │       ├── mipmap-xhdpi/
    │   │       │       ├── mipmap-xxhdpi/
    │   │       │       ├── mipmap-xxxhdpi/
    │   │       │       ├── values/
    │   │       │       │   └── styles.xml
    │   │       │       └── values-night/
    │   │       │           └── styles.xml
    │   │       └── profile/
    │   │           └── AndroidManifest.xml
    │   └── gradle/
    │       └── wrapper/
    │           └── gradle-wrapper.properties
    ├── lib/
    │   ├── main.dart
    │   ├── models/
    │   │   ├── meal_plan.dart
    │   │   ├── nutrition_info.dart
    │   │   └── recipe.dart
    │   ├── screens/
    │   │   ├── about.dart
    │   │   ├── calorie_ai.dart
    │   │   ├── home.dart
    │   │   ├── login.dart
    │   │   ├── planner.dart
    │   │   ├── profile.dart
    │   │   ├── signup.dart
    │   │   └── splash.dart
    │   ├── services/
    │   │   └── gemini_api.dart
    │   ├── utils/
    │   │   └── app_theme.dart
    │   └── widgets/
    │       ├── nutrition_card.dart
    │       ├── nutrition_chart.dart
    │       └── recipe_card.dart
    ├── test/
    │   └── widget_test.dart
    └── web/
        ├── index.html
        ├── manifest.json
        └── icons/
---

## ⚠️ Notes

- 🎯 This is a **student project** designed for **Android devices only**.
- ☁️ Currently **no cloud-based database** — uses local storage.
- 🔒 API keys are securely handled and **never hardcoded** in the repository.

---

