# 📰 News App with Flutter & NewsAPI

A modern and dynamic news app built with **Flutter**, fetching real-time data from **NewsAPI.org** and displaying it beautifully using custom widgets.

Users can choose a news category (like Sports, Business, Health...) from the top list, and the app automatically updates the list of articles based on the selection.


## 📱 Preview

https://github.com/user-attachments/assets/3cce3b26-6df1-46f3-b4f1-c25041c579ef


## 📝 Description

This project is a Flutter-based news application that:

- Displays a horizontally scrollable list of **news categories** (e.g. Sports, Science, General...)
- Fetches **news articles dynamically** using [NewsAPI.org](https://newsapi.org/)
- Shows a **custom news card** for each article, including an image, title, and description
- Supports **image fallback** using assets when the network image fails to load
- Organized with modular widgets: `NewsCard`, `NewsList`, `CategoryCard`, `CategoryList`
- Implements `didUpdateWidget` to refresh articles when category changes

---

## 📂 Project Structure

```
lib/
├── models/
│   ├── category_model.dart       # Category model & list
│   └── news_model.dart           # News article model
│
├── services/
│   └── news_services.dart        # API logic to fetch articles
│
├── widgets/
│   ├── category_card.dart        # UI card for category
│   ├── category_list.dart        # Horizontal list of categories
│   ├── news_card.dart            # UI card for article
│   └── news_list.dart            # Vertical list of articles
│
└── home_screen.dart              # Main UI screen
```

---

## 🛠 Technologies Used

- Flutter (Dart)
- NewsAPI (HTTP requests via Dio)
- Modular UI widgets
- `Image.network` + `errorBuilder`
- State management via `StatefulWidget` and `didUpdateWidget`

---

## 📦 How to Run

### 🔧 Prerequisites

- Flutter SDK installed
- API key from [NewsAPI.org](https://newsapi.org/)
- Internet connection

### ▶️ Steps

1. Clone the repository:

```bash
git clone https://github.com/RokiyaAbdElsatar/News-App-.git
cd news_app_flutter
```

2. Replace `YOUR_API_KEY` in `news_services.dart`:

```dart
https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=YOUR_API_KEY
```

3. Run the app:

```bash
flutter pub get
flutter run
```

---

---

## 📌 Notes

- Make sure you added your assets in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/
```

- If a news image fails to load, a fallback image from assets will appear instead.

---

## 🧑‍💻 Authors

- Rokiya Abd Elsatar

---

## 📄 License

This project is open source and available under the MIT License.
