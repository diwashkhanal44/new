extension AddElementInBetweenList<T> on List<T> {
  /// add the element from after 1st element upto before last element
  List<T> addInBetweenElements(T element) {
    List<T> tempList = [];
    this.asMap().forEach((key, value) {
      tempList.add(value);
      if (key != this.length - 1) tempList.add(element);
    });

    return tempList;
  }
}
