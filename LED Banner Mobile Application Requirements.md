<img src="https://r2cdn.perplexity.ai/pplx-full-logo-primary-dark%402x.png" class="logo" width="120"/>

# LED Banner Mobile Application Requirements

## Overview

This document outlines the comprehensive requirements for developing a mobile application that creates scrolling text displays in both standard and LED-style formats. The application, tentatively named "LED Banner Pro," will allow users to create customizable scrolling text displays for cheering at events, digital signage, or personal expression.

## 1. Technical Specifications

### 1.1 Development Platform

- **Framework**: Flutter for cross-platform development (Android and iOS)
- **Minimum OS Requirements**:
    - Android: API Level 21 (Android 5.0) or higher
    - iOS: iOS 12.0 or higher
- **Target Devices**: Smartphones and tablets


### 1.2 Core Dependencies

- **Marquee**: For text scrolling functionality[^1]
- **Google Fonts**: For font variety and customization[^5]
- **Dot Matrix Text**: For LED-style text display[^3]
- **Flutter ColorPicker**: For color selection[^4]
- **Image Picker**: For background image selection[^6]
- **Shared Preferences/Hive**: For storing user preferences and saved designs[^10][^11]
- **Google Mobile Ads**: For advertisement integration[^8]
- **In-App Purchase**: For premium feature unlocking[^9]
- **FFmpeg Kit**: For video/GIF export capability[^7][^15]


## 2. Functional Requirements

### 2.1 Text Customization

- **Text Input**:
    - Multi-line text input with character limit of at least 200 characters
    - Support for emojis and special characters
    - Language support for at least English, Vietnamese, and common international languages
- **Font Customization**:
    - Minimum 20 font options using Google Fonts integration
    - Font size adjustment (small, medium, large, extra-large)
    - Font style options: normal, bold, italic, bold italic
    - Font spacing adjustment
- **Color Customization**:
    - Text color selection with RGB, HEX, and predefined palette options
    - Optional gradient text with customizable gradient direction
    - Color opacity/transparency control


### 2.2 Display Styles

- **Normal Text Mode**:
    - Standard text display with applied font properties
    - Optional text border/shadow effects
- **LED Text Mode**:
    - Dot matrix simulation of LED display[^3][^14]
    - LED pixel shape options: round, square, diamond, heart, star
    - LED pixel size adjustment
    - LED density adjustment (spacing between LED pixels)
    - LED brightness/intensity control
    - Optional LED flickering effect with adjustable speed
    - Color options for both active and inactive LED pixels


### 2.3 Background Customization

- **Solid Color Backgrounds**:
    - Color picker with RGB, HEX, and predefined palette options
    - Background opacity/transparency control
- **Image Backgrounds**:
    - Selection from device gallery
    - Predefined background templates (minimum 10 options)
    - Background image opacity/transparency control
    - Background image scaling options (fit, fill, stretch)


### 2.4 Animation Controls

- **Scrolling Direction**:
    - Left to right
    - Right to left
    - Top to bottom
    - Bottom to top
    - Bounce mode (reverses direction at edges)
- **Speed Control**:
    - Minimum 5 preset speeds (very slow, slow, medium, fast, very fast)
    - Custom speed slider for fine-tuning
    - Pause duration at screen edges before continuing
- **Special Effects**:
    - Fade in/out options at screen edges
    - Acceleration/deceleration effects
    - Pause intervals during scrolling


### 2.5 Save and Load Functionality

- **Local Storage**:
    - Save created banner designs with custom names
    - Minimum 10 free slots for saving designs
    - Preview thumbnails for saved designs
    - Categorization/tagging of saved designs
    - Date and time stamping of saved designs
- **Design Management**:
    - View list of saved designs
    - Edit existing designs
    - Duplicate designs
    - Delete designs
    - Export/import designs (for backup/sharing)


### 2.6 Export Functionality

- **GIF Export**:
    - Export scrolling text as GIF animation
    - Configurable GIF duration
    - Configurable GIF resolution
    - Configurable frame rate
- **Video Export**:
    - Export scrolling text as MP4 video
    - Configurable video duration
    - Configurable video resolution
    - Optional background music/sound addition (premium feature)
- **Sharing**:
    - Direct sharing to social media platforms
    - Save to device gallery
    - Share as file via messaging apps


### 2.7 Monetization Features

- **Advertisement Integration**:
    - Banner ads at bottom of screen during app use
    - Interstitial ads after saving or exporting designs
    - Rewarded ads for additional premium features temporary use
- **In-App Purchases**:
    - One-time purchase to remove all advertisements
    - Subscription model for premium features:
        - Additional LED pixel shapes
        - Advanced export options
        - More saving slots
        - Higher resolution exports
        - Background music addition to videos
        - Custom LED animation patterns


## 3. User Interface Requirements

### 3.1 Main Screens

- **Home Screen**:
    - Quick access to create new banner
    - Gallery of recently created banners
    - Quick tips or featured templates
- **Editor Screen**:
    - Live preview of banner at top
    - Tabbed interface for customization categories:
        - Text (content, font, color)
        - Style (normal/LED, LED options)
        - Background (color/image selection)
        - Animation (speed, direction, effects)
    - Save/export buttons
    - Undo/redo functionality
- **Gallery Screen**:
    - Grid view of saved designs with thumbnails
    - Search/filter options
    - Batch selection for delete/export
- **Settings Screen**:
    - App theme selection (light/dark)
    - Default banner settings
    - Account management (if implementing cloud save)
    - Purchase management


### 3.2 UI/UX Principles

- **Accessibility**:
    - Support for screen readers
    - Dynamic text sizing
    - High contrast mode
    - Color blind friendly design options
- **User Experience**:
    - Intuitive drag-and-drop interface where applicable
    - Real-time preview of all changes
    - Consistent design language throughout the app
    - Haptic feedback for interactions
    - Tool tips for new users


## 4. Non-Functional Requirements

### 4.1 Performance

- **Responsiveness**:
    - App should maintain 60 FPS during animation preview
    - UI interactions should respond within 100ms
    - Export processing should show progress indicator for operations exceeding 2 seconds
- **Resource Usage**:
    - Maximum memory usage not to exceed 200MB during normal operation
    - Battery optimization for prolonged use


### 4.2 Reliability

- **Error Handling**:
    - Graceful error recovery
    - Automatic saving of work in progress every 30 seconds
    - Data validation before saving/exporting
- **Compatibility**:
    - Consistent functionality across supported devices and OS versions
    - Adaptation to different screen sizes and aspect ratios


### 4.3 Security

- **Data Protection**:
    - Local encryption of saved designs
    - Secure handling of payment information
    - Privacy-compliant ad implementation


## 5. Future Enhancement Considerations

- Cloud synchronization of saved designs
- Template marketplace (free and premium)
- AI-powered design suggestions
- Collaborative editing features
- Live streaming of banners
- Multiple text blocks with independent animations
- Advanced LED patterns and animations
- Audio synchronization with banner animation
- AR features for projecting banners in real world through camera


## 6. Development Phases

### Phase 1: Core Functionality

- Basic text input and customization
- Simple scrolling animations
- Local saving and loading
- Basic LED text display


### Phase 2: Enhanced Features

- Advanced LED customization
- Background image support
- Export functionality
- Additional animation options


### Phase 3: Monetization

- Ad integration
- In-app purchase implementation
- Premium features


### Phase 4: Polish and Optimization

- UI/UX refinement
- Performance optimization
- Bug fixes and stability improvements


## 7. Testing Requirements

- Unit testing for core functionality
- Integration testing across different devices
- Performance testing under various conditions
- User acceptance testing with target demographic
- Monetization feature testing in sandbox environment

This requirements document serves as a comprehensive guide for developing the LED Banner application using Flutter. The implementation should focus on delivering a user-friendly, feature-rich experience while maintaining performance and reliability.

<div style="text-align: center">⁂</div>

[^1]: https://pub.dev/packages/marquee

[^2]: https://pub.dev/packages/scrollable_text/versions/0.0.2

[^3]: https://pub.dev/packages/dot_matrix_text

[^4]: https://pub.dev/packages/flutter_colorpicker

[^5]: https://pub.dev/packages/google_fonts

[^6]: https://www.youtube.com/watch?v=Mq2_Qlr51aM

[^7]: https://pub.dev/documentation/ffmpeg_kit_flutter_full/latest/

[^8]: https://pub.dev/packages/google_mobile_ads

[^9]: https://pub.dev/packages/in_app_purchase

[^10]: https://pub.dev/packages/shared_preferences

[^11]: https://www.youtube.com/watch?v=xN_OTO5EYKY

[^12]: https://pub.dev/packages/text_marquee

[^13]: https://docs.flutter.dev/ui/layout/scrolling

[^14]: https://github.com/flutter-clutter/flutter-led-display

[^15]: https://pub.dev/documentation/ffmpeg_kit_flutter_new/latest/

[^16]: https://www.youtube.com/watch?v=NopYYXeav3k

[^17]: https://dev.to/flutterclutter/how-to-simulate-an-led-display-in-flutter-3693

[^18]: https://www.youtube.com/watch?v=mXCX5pmHSSk

[^19]: https://github.com/yousifk/marquee_widget

[^20]: https://flutterstuff.com/how-to-make-running-text-marquee-animation-in-flutter-app/

[^21]: https://stackoverflow.com/questions/73298491/flutter-widget-to-display-moving-marquee-text

[^22]: https://dev.to/valerianagit/flutter-create-a-scrollable-text-and-textfield-widgets-obp

[^23]: https://fluttergems.dev/packages/marquee/

[^24]: https://stackoverflow.com/questions/49638499/how-to-make-scrollable-text-in-flutter

[^25]: https://fluttergems.dev/packages/text_scroll/

[^26]: https://docs.flutter.dev/ui/widgets/scrolling

[^27]: https://community.flutterflow.io/widgets-and-design/post/is-there-some-way-to-make-a-single-text-field-scrollable-5okyabHjnfjXsDA

[^28]: https://pub.dev/packages/dot_matrix_text/license

[^29]: https://github.com/rene-d/fontino

[^30]: https://stackoverflow.com/questions/70511985/how-can-i-make-ui-for-matrices-in-flutter

[^31]: http://iot47.com/hien-thi-da-ngon-ngu-tren-man-hinh-lcd-matrix-thu-vien-fontmaker-h/

[^32]: https://stackoverflow.com/questions/73076634/converting-matrix-of-colors-to-image-in-flutter

[^33]: https://pub.dev/packages/dot_matrix_text/versions

[^34]: https://www.youtube.com/watch?v=0jKVd-z6WwM

[^35]: https://font.download/font/led-dot-matrix

[^36]: https://www.educative.io/answers/how-to-use-google-fonts-in-flutter

[^37]: https://www.youtube.com/watch?v=vwSY5Q-mVMs

[^38]: https://stackoverflow.com/questions/70408001/flutter-circular-color-picker-package-flutter-colorpicker

[^39]: https://www.youtube.com/watch?v=QrgHUew_7X8

[^40]: https://stackoverflow.com/questions/76598157/how-to-create-an-image-picker-from-gallery-and-camera-in-flutter

[^41]: https://mchome.github.io/flutter_colorpicker/

[^42]: https://stackoverflow.com/questions/74949816/how-to-add-google-fonts

[^43]: https://www.dhiwise.com/post/streamlining-image-selection-with-flutter-image-picker-plugin

[^44]: https://play.google.com/store/apps/datasafety?id=com.anamiapps.appcolorpicker

[^45]: https://fluttergems.dev/packages/google_fonts/

[^46]: https://pub.dev/packages/image_picker

[^47]: https://docs.flutter.dev/cookbook/design/fonts

[^48]: https://www.reddit.com/r/flutterhelp/comments/1ic1b0c/alternative_to_flutter_ffmpeg_kit/

[^49]: https://pub.dev/documentation/image/latest/image/GifEncoder-class.html

[^50]: https://www.reddit.com/r/FlutterDev/comments/1kifigp/ffmpeg_kit_flutter_can_someone_provide_an/

[^51]: https://github.com/google/dart-gif-encoder

[^52]: https://onepub.dev/packageDependerView/ffmpeg_kit_flutter/versions/6.0.3

[^53]: https://pub.dev/packages/gifencoder/versions

[^54]: https://github.com/brendan-duncan/image/issues/153

[^55]: https://www.youtube.com/watch?v=ohKtht2w_Eo

[^56]: https://fluttergems.dev/packages/gif/

[^57]: https://flutter.dev/monetization

[^58]: https://www.aubergine.co/insights/flutter-in-app-purchase-tutorial-monetize-your-application

[^59]: https://github.com/googleads/googleads-mobile-flutter/blob/main/packages/google_mobile_ads/CHANGELOG.md

[^60]: https://pub.dev/packages/flutter_inapp_purchase

[^61]: https://pub.dev/documentation/google_mobile_ads/latest/google_mobile_ads/

[^62]: https://viblo.asia/p/in-app-purchase-flutter-phan-2-hien-thi-va-xu-ly-mua-product-tren-store-1Je5Emoy5nL

[^63]: https://docs.flutter.dev/resources/in-app-purchases-overview

[^64]: https://www.youtube.com/watch?v=UBrywxS4tf4

[^65]: https://github.com/flutter/packages/blob/main/packages/in_app_purchase/in_app_purchase/example/README.md

[^66]: https://stackoverflow.com/questions/75590541/how-to-upgrade-downgrade-subscription-in-flutter-using-in-app-purchase-package

[^67]: https://www.youtube.com/watch?v=sa_U0jffQII

[^68]: https://www.dhiwise.com/post/flutter-hive-tutorial–setting-up-and-using-local-data-in-flutter

[^69]: https://pub.dev/packages/hive_flutter/versions

[^70]: https://viblo.asia/p/hive-la-gi-cach-dung-hive-trong-flutter-nhu-the-nao-ORNZqDOMK0n

[^71]: https://pub.dev/packages/hive/versions

[^72]: https://techmaster.vn/posts/37835/cac-su-dung-hive-trong-ung-dung-flutter

[^73]: https://dev.to/vikram-boominathan/hive-with-api-4hf2

[^74]: https://www.youtube.com/watch?v=Tqpv6uvrEmQ

[^75]: https://www.flutterclutter.dev/flutter/tutorials/the-matrix-effect-digital-rain/2020/1607/

[^76]: https://forum.arduino.cc/t/using-dot-matrix-fonts-in-led-matrix-displays/240275

[^77]: https://github.com/fumblystuff/pumpkin-controller-app-flutter

[^78]: https://github.com/trip5/Matrix-Fonts

[^79]: https://pub.dev/packages/flex_color_picker

[^80]: https://fluttergems.dev/color-picker-utilities/

[^81]: https://www.youtube.com/watch?v=Hum9i9SWXhA

[^82]: https://www.scaler.com/topics/flutter-color-picker/

[^83]: https://www.linkedin.com/posts/manjushyama-singhania-174a16211_how-to-make-a-color-picker-in-flutter-activity-7306154639349936130-a4rE

[^84]: https://github.com/arthenica/ffmpeg-kit

[^85]: https://github.com/arthenica/ffmpeg-kit/wiki/Flutter

[^86]: https://stackoverflow.com/questions/73643448/how-external-libraries-install-for-ffmpeg-kit-flutter

[^87]: https://www.npmjs.com/package/gif-encoder

[^88]: https://flutterawesome.com/a-flutter-ffmpeg-kit-example/

[^89]: https://stackoverflow.com/questions/51556356/how-to-display-animated-gif-in-flutter

[^90]: https://developers.google.com/admob/flutter/quick-start

[^91]: https://docs.flutter.dev/cookbook/plugins/google-mobile-ads

[^92]: https://github.com/googleads/googleads-mobile-flutter/blob/master/packages/google_mobile_ads/example/lib/main.dart

[^93]: https://www.youtube.com/watch?v=KOh2A782CeI

[^94]: https://codelabs.developers.google.com/codelabs/admob-ads-in-flutter

[^95]: https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases

[^96]: https://techmaster.vn/posts/37841/flutter-su-dung-sharedpreferences

[^97]: https://pub.dev/packages/shared_preferences/example

[^98]: https://docs.flutter.dev/cookbook/persistence/key-value

[^99]: https://www.cybrosys.com/blog/how-to-use-shared-preferences-in-flutter

[^100]: https://www.youtube.com/watch?v=Ccd5fIrCDSY

[^101]: https://github.com/isar/hive

