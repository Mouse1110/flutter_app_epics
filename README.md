# Flutter App air purification

It is the first project in terms of flutter usage

## Getting Started
<h1 align="center"> WebApp Create By Flutter </h1>
<p align = "center">Ứng Dụng Về Quản Lý IOT sử dụng framerwork flutter.</p>

## Index
- [Cách Cài Đặt](#install)
- [IDE sử dụng](#ide)
- [Cấu trúc lib](#lib)
- [Các PageView](#pageview)
- [Demo](#Example)
- [Contribution](#contribution)

## Install <a name = "install"></a>

### 💡 Bắt Buộc Cài Đặt
- Cài Đặt flutter: nếu bạn sài windows có thể xem theo trang này [Windows install - Flutter](https://flutter.dev/docs/get-started/install/windows).
- Cài Đặt Dart : ngôn ngữ viết ứng dụng mà flutter hỗ trợ [Get the Dart SDK | Dart](https://dart.dev/get-dart).
### Ứng Dụng Có Sử Dụng Các Thư Viện Hỗ Trợ
Được cài đặt theo gói pub get trong tệp pubspec.yaml
1. material-design: (có sẵn khi cài đặt gói).
2. assets image: (import hình ảnh để sử dụng cho dự án).
3. dev_dependencies: (hỗ trợ việc code web app).
4. fl_chart: ^0.12.0 (hỗ trợ vẽ line chart).
5. cupertino_icons: ^1.0.1 (để sử dụng icon của có sẵn của flutter).

## IDE sử dụng <a name = "ide"></a>
- Sử dụng visual studio code [Visual Studio code](https://code.visualstudio.com/)

### 💡 Test chương trình bằng web chrome
Bật phân quyền beta và cho web run web
```
 $ flutter channel beta
 $ flutter upgrade
 $ flutter config --enable-web
```

Chạy test ứng dụng trên chrome
```
$ cd MyApp
$ flutter run -d chrome
```
## Cấu trúc lib <a name="lib"></a>
### 💡 Lib
1. [DesktopScreen](#)
2. [Model](#)
3. [home](#)
4. [detail](#)

```main.dart```

### 💡 Screen View trên các device
Hiển thị trên 2 loại màn hình smartphone (width<800) và desktop (width>=800)
```
LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return HomeScreen();
        } else {
          return DesktopScreen(size: size);
        }
      },
    );
 ```
 
## Các PageView <a name="pageview"></a>
1. [Trang chủ](#home)
2. [Detail Tree](#detail)

### 💡 Trang Chủ <a name="home"></a>

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
