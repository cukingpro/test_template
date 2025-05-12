// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _en = {
  "app": {
    "name": "Flutter Template",
    "version": "1.0.0"
  },
  "common": {
    "ok": "OK",
    "cancel": "Cancel",
    "save": "Save",
    "delete": "Delete",
    "confirm": "Confirm",
    "continue": "Continue",
    "skip": "Skip",
    "next": "Next",
    "back": "Back",
    "done": "Done",
    "error": "Error",
    "success": "Success",
    "warning": "Warning",
    "loading": "Loading...",
    "search": "Search",
    "noResults": "No results found",
    "tryAgain": "Try Again"
  },
  "onboarding": {
    "page1": {
      "title": "Welcome to Flutter Template",
      "description": "A modern Flutter template with Riverpod, clean architecture, and ShadCN UI."
    },
    "page2": {
      "title": "Fully Customizable",
      "description": "Easily theme your app with light and dark mode, custom text styles, and colors."
    },
    "page3": {
      "title": "Ready to Go",
      "description": "Multiple environments, localization support, and organized project structure."
    }
  },
  "home": {
    "title": "Home",
    "welcome": "Welcome to your app!",
    "description": "This template includes everything you need to build a great app"
  },
  "settings": {
    "title": "Settings",
    "theme": {
      "title": "Theme",
      "light": "Light",
      "dark": "Dark",
      "system": "System"
    },
    "language": {
      "title": "Language",
      "english": "English",
      "vietnamese": "Vietnamese"
    },
    "about": {
      "title": "About",
      "description": "A Flutter template with Riverpod, clean architecture, ShadCN UI, multiple environments, and localization support.",
      "version": "Version"
    }
  },
  "errors": {
    "general": "Something went wrong. Please try again.",
    "connection": "No internet connection. Please check your network settings.",
    "timeout": "Request timed out. Please try again.",
    "notFound": "The requested resource was not found."
  }
};
static const Map<String,dynamic> _vi = {
  "app": {
    "name": "Flutter Template",
    "version": "1.0.0"
  },
  "common": {
    "ok": "OK",
    "cancel": "Hủy",
    "save": "Lưu",
    "delete": "Xóa",
    "confirm": "Xác nhận",
    "continue": "Tiếp tục",
    "skip": "Bỏ qua",
    "next": "Tiếp theo",
    "back": "Quay lại",
    "done": "Hoàn thành",
    "error": "Lỗi",
    "success": "Thành công",
    "warning": "Cảnh báo",
    "loading": "Đang tải...",
    "search": "Tìm kiếm",
    "noResults": "Không tìm thấy kết quả",
    "tryAgain": "Thử lại"
  },
  "onboarding": {
    "page1": {
      "title": "Chào mừng đến với Flutter Template",
      "description": "Một mẫu Flutter hiện đại với Riverpod, kiến trúc sạch và ShadCN UI."
    },
    "page2": {
      "title": "Tùy chỉnh hoàn toàn",
      "description": "Dễ dàng thay đổi giao diện với chế độ sáng và tối, kiểu chữ tùy chỉnh và màu sắc."
    },
    "page3": {
      "title": "Sẵn sàng sử dụng",
      "description": "Hỗ trợ nhiều môi trường, đa ngôn ngữ và cấu trúc dự án có tổ chức."
    }
  },
  "home": {
    "title": "Trang chủ",
    "welcome": "Chào mừng đến với ứng dụng của bạn!",
    "description": "Mẫu này bao gồm mọi thứ bạn cần để xây dựng một ứng dụng tuyệt vời"
  },
  "settings": {
    "title": "Cài đặt",
    "theme": {
      "title": "Giao diện",
      "light": "Sáng",
      "dark": "Tối",
      "system": "Hệ thống"
    },
    "language": {
      "title": "Ngôn ngữ",
      "english": "Tiếng Anh",
      "vietnamese": "Tiếng Việt"
    },
    "about": {
      "title": "Thông tin",
      "description": "Một mẫu Flutter với Riverpod, kiến trúc sạch, ShadCN UI, hỗ trợ nhiều môi trường và đa ngôn ngữ.",
      "version": "Phiên bản"
    }
  },
  "errors": {
    "general": "Đã xảy ra lỗi. Vui lòng thử lại.",
    "connection": "Không có kết nối internet. Vui lòng kiểm tra cài đặt mạng của bạn.",
    "timeout": "Yêu cầu hết thời gian. Vui lòng thử lại.",
    "notFound": "Không tìm thấy tài nguyên yêu cầu."
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": _en, "vi": _vi};
}
