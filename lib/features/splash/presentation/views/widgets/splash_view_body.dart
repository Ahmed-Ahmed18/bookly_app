import 'package:first/constants.dart';
import 'package:first/core/utils/assets.dart';
import 'package:first/features/home/presentation/view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initAnimation();
    initNavigation();
  }




  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4,),
        AnimatedBuilder(
          animation:slidingAnimation,
          builder: (context,_){
            return  SlideTransition(
            position: slidingAnimation,
            child: const Text('Read Free Box',
              textAlign: TextAlign.center,),
    );
    },
        ),
      ],
    );
  }
  void initAnimation() {
    animationController=AnimationController(
        vsync: this,
        duration: Duration(seconds: 1)
    );
    slidingAnimation= Tween<Offset>(begin: const Offset(0, 10) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
    slidingAnimation.addListener((){
      setState(() {

      });
    });
  }
  void initNavigation() {
    Future.delayed( const Duration(seconds: 3),(){
      Get.to(()=>HomeView(),
          transition: Transition.fade ,
          duration: KtransitionDuration);
    });
  }
}
