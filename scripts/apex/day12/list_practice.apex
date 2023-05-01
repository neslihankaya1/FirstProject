List<Integer> numberList = new List<Integer>{ 36, 90, 60, 27, 29 };

for (Integer i = 0; i < 5; i++) {
  numberList.set(i, numberList.get(i) * 2);
}
System.debug('numberlist value is : ' + numberlist);
