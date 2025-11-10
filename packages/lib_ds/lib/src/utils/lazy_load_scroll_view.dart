import 'package:flutter/material.dart';

enum LazyLoadState {
  idle,
  loading,
}

class LazyLoadScrollView extends StatefulWidget {
  final Widget child;
  final VoidCallback onEndOfPage;
  final int scrollThreshold;
  final bool stopRequesting;

  const LazyLoadScrollView({
    super.key,
    required this.child,
    required this.onEndOfPage,
    this.scrollThreshold = 200,
    this.stopRequesting = false,
  });

  @override
  State<LazyLoadScrollView> createState() => _LazyLoadScrollViewState();
}

class _LazyLoadScrollViewState extends State<LazyLoadScrollView> {
  LazyLoadState loadMoreStatus = LazyLoadState.idle;

  @override
  void didUpdateWidget(LazyLoadScrollView oldWidget) {
    super.didUpdateWidget(oldWidget);
    loadMoreStatus = LazyLoadState.idle;
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _onNotification,
      child: widget.child,
    );
  }

  bool _onNotification(ScrollNotification notification) {
    if (widget.stopRequesting) {
      return true;
    }
    if (notification is ScrollUpdateNotification) {
      if (notification.metrics.maxScrollExtent - notification.metrics.pixels <= widget.scrollThreshold) {
        if (loadMoreStatus == LazyLoadState.idle) {
          loadMoreStatus = LazyLoadState.loading;
          widget.onEndOfPage();
        }
      }
    }
    return true;
  }
}
