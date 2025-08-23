# 📰 News App with Flutter & NewsAPI

A modern and dynamic news app built with **Flutter**, fetching real-time data from **NewsAPI.org** and displaying it beautifully using custom widgets.

Users can choose a news category (like Sports, Business, Health...) from the top list, and the app automatically updates the list of articles based on the selection.

Each article can be opened in a **dedicated details page** showing full content, author name, and a "Read More" button to view the original source.

---

## 📱 Preview


https://github.com/user-attachments/assets/9381cb3f-c4c5-4d67-b429-973ecfd8abf9


Icon App 

<img width="109" height="115" alt="image" src="https://github.com/user-attachments/assets/ffb7c0b1-02b6-487a-9fe4-90cf1ee9f51c" />


---

## 📝 Features

This Flutter-based news application includes:

- Horizontally scrollable list of **news categories**
- Fetches **news articles dynamically** using [NewsAPI.org](https://newsapi.org/)
- Custom-designed **news cards** with image, title, and description
- Tapping on a card opens a **details screen** with:
  - Title, Image, Author, Description
  - Full content (if available)
  - Published date (formatted using `intl`)
  - **"Read Full Article"** button that launches the URL in the browser
- Fallback image shown when the article image is null or fails
- Added **app icon** using custom assets
- Modular and clean widget architecture
- Uses `StatefulWidget` + `didUpdateWidget` to handle dynamic updates

---

## 📂 Project Structure

```
lib/
├── models/
│   ├── category_model.dart       # Category model
│   └── news_model.dart           # News article model (title, description, author, image, content, date, url)
│
├── services/
│   └── news_services.dart        # API logic to fetch articles
│
├── widgets/
│   ├── category_card.dart        # UI card for a category
│   ├── category_list.dart        # Horizontal scroll of categories
│   ├── news_card.dart            # UI card for each news article
│   ├── news_list.dart            # Vertical list of articles
│   ├── auther_card.dart          # Widget to show author
│   └── news_image.dart           # Widget to display image with fallback
│
├── views/
│   └── news_screen.dart          # Article details page
│
└── home_screen.dart              # Main home screen with categories and articles
```

---

## 🛠 Technologies Used

- **Flutter (Dart)**
- **NewsAPI** (via Dio for HTTP)
- `intl` for date formatting
- `url_launcher` for opening URLs in browser
- Modular UI Widgets
- State Management with `StatefulWidget` & `didUpdateWidget`
- Asset management and fallback handling
- App Icon added using `mipmap-*` assets

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
'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=YOUR_API_KEY'
```

3. Run the app:

```bash
flutter pub get
flutter run
```

---

## 🧾 Additional Setup

### ✅ Add your assets in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/
```

> 🔁 If `Image.network` fails, fallback image will load from `assets/images/news.jpg`.

### ✅ Add `url_launcher` and `intl` dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  dio: ^5.9.0
  url_launcher: ^6.3.2
  intl: ^0.20.2
```

Then run:

```bash
flutter pub get
```

---

## 📌 Notes

- If a news article doesn't have content, a graceful fallback is shown.
- The app is responsive and visually optimized with padding, alignment, and color design.
- The "Read Full Article" button is only shown if the URL is available.

---

## 🧑‍💻 Author

- **Rokiya Abd Elsatar**

---

## 📄 License

This project is open source and available under the MIT License.
