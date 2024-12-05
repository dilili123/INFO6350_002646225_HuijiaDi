import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() => runApp(const RadialTransitionDemo());

class RadialTransitionDemo extends StatelessWidget {
  const RadialTransitionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0; // 调慢动画速度，方便观察
    return MaterialApp(
      title: 'Radial Transition Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radial Transition Demo'),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 40.0, // 将圆形图标放置在屏幕底部
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildHeroAvatar(context, 'images/chair-alpha.png', 'Chair'),
                _buildHeroAvatar(context, 'images/binoculars-alpha.png', 'Binoculars'),
                _buildHeroAvatar(context, 'images/beachball-alpha.png', 'Beach Ball'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroAvatar(BuildContext context, String imagePath, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => SecondPage(
              imagePath: imagePath,
              description: description,
            ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        );
      },
      child: Hero(
        tag: imagePath,
        createRectTween: (begin, end) => MaterialRectCenterArcTween(begin: begin, end: end),
        child: RadialExpansion(
          maxRadius: 60.0,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 210, 222, 243), // 设置圆形的底色
            ),
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String imagePath;
  final String description;

  const SecondPage({
    super.key,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radial Transition Demo'),
      ),
      body: Center(
        child: Hero(
          tag: imagePath,
          createRectTween: (begin, end) => MaterialRectCenterArcTween(begin: begin, end: end),
          child: RadialExpansion(
            maxRadius: 300.0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 210, 222, 243), // 方形时的背景色，保持与FirstPage一致
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: 300.0,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 24.0, 
                      fontWeight: FontWeight.bold, // 保持字体为粗体
                      color: Colors.black, // 确保文字颜色为黑色
                      decoration: TextDecoration.none, // 确保没有下划线
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RadialExpansion extends StatelessWidget {
  const RadialExpansion({
    super.key,
    required this.maxRadius,
    required this.child,
  }) : clipRectSize = 2.0 * (maxRadius / math.sqrt2);

  final double maxRadius;
  final double clipRectSize;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipBehavior: Clip.antiAlias, // 启用抗锯齿
      child: Center(
        child: AnimatedContainer( // 使用 AnimatedContainer 平滑过渡
          duration: const Duration(milliseconds: 300), // 调整动画时长
          width: clipRectSize,
          height: clipRectSize,
          decoration: const BoxDecoration(
            color: Colors.transparent, // 设置透明背景，避免颜色不一致
          ),
          child: ClipRect(
            clipBehavior: Clip.antiAlias, // 启用抗锯齿
            child: child, // 显示图片内容
          ),
        ),
      ),
    );
  }
}

class MaterialRectCenterArcTween extends RectTween {
  MaterialRectCenterArcTween({Rect? begin, Rect? end}) : super(begin: begin, end: end);

  @override
  Rect lerp(double t) {
    final centerArcRect = Rect.lerp(begin, end, t)!;
    return Rect.fromCenter(
      center: centerArcRect.center,
      width: math.max(centerArcRect.width, centerArcRect.height),
      height: math.max(centerArcRect.width, centerArcRect.height),
    );
  }
}
