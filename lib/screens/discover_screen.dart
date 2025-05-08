import 'package:flutter/material.dart';

// -- Widget 
import 'package:podkes/widgets/discover_widgets/discover_search_bar_widget.dart';
import 'package:podkes/widgets/discover_widgets/discover_tab_bar_widget.dart';
import 'package:podkes/widgets/discover_widgets/discover_trending_podcasts.dart';

// -- External Package
import 'package:flutter_svg/svg.dart';

// - Extension
import 'package:podkes/extensions/screen_size.dart';



class DiscoverScreen extends StatefulWidget  {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen>  with SingleTickerProviderStateMixin{
  
  late final TabController _tabBarController;

  @override
  void initState() {
    _tabBarController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: Container(margin: EdgeInsets.only(left: 24),child: SvgPicture.asset('assets/discover_screen/discover_screen_svgs/three_dashes.svg', fit: BoxFit.scaleDown,)),
        title: Text('Podkes', style: Theme.of(context).textTheme.titleMedium,),
        actions: [
          Container(margin: EdgeInsets.only(right: 24),child: SvgPicture.asset('assets/discover_screen/discover_screen_svgs/Notification.svg'))
        ],
        
      ),
      body: SingleChildScrollView(
        child: Container(
          height: context.getHeight(),
          width: context.getWidth(),
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [

              DiscoverSearchBarWidget(),
        
              SizedBox(height: 24),

              DiscoverTabBarWidget(tabController: _tabBarController),
        
              SizedBox(height: 16),
        
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Trending', style: Theme.of(context).textTheme.titleMedium,),
              ),
        
              SizedBox(height: 16),
        
              DiscoverTrendingPodcasts(),

            ],
          ),
        ),
      ),
    );
  }
}