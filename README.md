# Free Cloud iOS IPA Compiler 🚀

A lightweight, minimal configuration template designed to compile an iOS `.ipa` application completely in the cloud for free. 

This workflow uses **Swift Package Manager (SPM)** to entirely bypass bulky Xcode `.xcodeproj` configurations, allowing you to develop, build, and export an iOS app bundle using nothing but an iPad web browser and plain text files.

## 📁 Repository Structure

```text
├── .github/
│   └── workflows/
│       └── build.yml       # The GitHub Actions automation script
├── Sources/
│   └── ContentView.swift   # Your main application code (SwiftUI)
├── ExportOptions.plist     # Configuration file for bundling the package
├── Package.swift           # Project properties, bundle ID, and metadata
└── README.md               # This documentation file
```

## 🛠️ How to Compile Your App

You do not need a Mac or a paid Apple Developer Account to compile this project. GitHub's free automation servers handle the entire build process.

1. Navigate to the **Actions** tab at the top of this GitHub repository page.
2. Under the Actions sidebar on the left, click on the **Compile IPA** workflow.
3. On the right side of the screen, click the **Run workflow** dropdown menu.
4. Keep the branch set to `main` and click the green **Run workflow** button.
5. Wait roughly 2 minutes for the build process to finish (the spinning wheel will change to a green checkmark).
6. Click on the completed run (e.g., *"Compile IPA #1"*).
7. Scroll down to the **Artifacts** section at the bottom of the summary page and click **Compiled-App-Package** to download your ready-to-use `.ipa` file directly to your iPad's Files app.

## ⚠️ Important Configuration & Signing Details

* **Unsigned Build:** Because this project uses a free, automated workflow without paid signing certificates, the generated `.ipa` file is **unsigned**. 
* **Installation:** You cannot install this `.ipa` via standard App Store methods. To test and install this app on your retail iPad, you must use community-sideloading tools like **TrollStore** (on compatible iPadOS versions), **SideStore**, or **AltStore**.
* **Modifying Code:** You can change the user interface or add features simply by editing the text inside `Sources/ContentView.swift` directly from your iPad browser, committing the changes, and running the workflow again.
