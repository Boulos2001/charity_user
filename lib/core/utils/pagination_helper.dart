class PaginationHelper<T> {
  List<T> currentItems;
  final void Function(bool) loadingMoreCallback; // Callback for loading more
  final void Function(bool) loadingInitCallback; // Callback for initial loading
  final int currentPage;
  final int lastPage;
  final String? filter;
  final Future<List<T>> Function(int,String?) fetchData;
  final void Function(int) currentPageCallback;

  PaginationHelper(
      {required this.currentItems,
      required this.loadingMoreCallback,
      required this.loadingInitCallback,
      required this.currentPage,
      required this.lastPage,
      required this.fetchData,
      required this.currentPageCallback,
      this.filter});

  // check if reached max
  bool get isReachedMax => currentPage > lastPage;
  // get next page add 1 to current++
  int get nextPage => currentPage + 1;

  Future<List<T>> loadData() async {
    //
    if (isReachedMax&&(filter?.isEmpty??true)) return currentItems;
    //
    if (currentPage <= 1) {
      return await initialLoad().whenComplete(
        () => currentPageCallback(nextPage),
      );
    } else {
      return await loadMoreItems().whenComplete(
        () => currentPageCallback(nextPage),
      );
    }
  }

  /// Initial load
  Future<List<T>> initialLoad() async {
    try {
      // Set initial loading to true before fetching new data
      loadingInitCallback(true);
      // Fetch new data using the provided callback function
      List<T> newItems = await fetchData(this.currentPage,filter);
      // Return the new items
      return newItems;
    } finally {
      // Set initial loading to false after fetching new data
      loadingInitCallback(false);
    }
  }

  /// Load more items
  Future<List<T>> loadMoreItems() async {
    try {
      // Set loading to true before fetching more data
      loadingMoreCallback(true);
      // Fetch more data using the provided callback function
      List<T> newItems = await fetchData(this.currentPage,filter);
      var currentList = List<T>.from(currentItems);
      currentList.addAll(newItems);
      // Return the current items
      return currentList;
    } finally {
      // Set loading to false after fetching more data
      loadingMoreCallback(false);
    }
  }
}
