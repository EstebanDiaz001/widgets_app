import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  static const name = 'Infinite_Scroll_Screen';

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIDs = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future loadNextPage() async {
    if (isLoading == true) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(milliseconds: 1000));

    addFiveImages();

    isLoading = false;

    setState(() {});
    moveScrollToBottom();
  }

  void moveScrollToBottom(){
    if (scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return ;

    scrollController.animateTo(
      scrollController.position.pixels + 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn
      );


  }

  void addFiveImages() {
    final lastID = imagesIDs.last;
    imagesIDs.addAll([1, 2, 3, 4, 5].map((e) => lastID + e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imagesIDs.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/images/charging.gif'),
              height: 300,
              image: NetworkImage(
                  'https://picsum.photos/id/${imagesIDs[index]}/500/300'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: isLoading
            ? const CircularProgressIndicator()
            : const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}
