import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  final List imagesID = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          (scrollController.position.maxScrollExtent)) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add5();
    isLoading = false;
    setState(() {});

    if ((scrollController.position.pixels + 100) <=
        (scrollController.position.maxScrollExtent)) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastID = imagesID.last;
    imagesID.addAll([1, 2, 3, 4, 5].map((e) => lastID + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesID.last;
    imagesID.clear();
    imagesID.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color.fromARGB(106, 96, 90, 90),
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: RefreshIndicator(
            color: AppTheme.primary,
            onRefresh: onRefresh,
            child: Stack(
              children: [
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: scrollController,
                  itemCount: imagesID.length,
                  itemBuilder: (context, index) {
                    return FadeInImage(
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                        placeholder: const AssetImage('assets/jar-loading.gif'),
                        image: NetworkImage(
                            'https://picsum.photos/500/300?image=${imagesID[index]}'));
                  },
                ),
                if (isLoading)
                  Positioned(
                    bottom: 50,
                    left: size.width * 0.5 - 30,
                    child: const CustomIsLoading(),
                  ),
              ],
            ),
          ),
        ));
  }
}
