Map<String, Integer> myMap = new Map<String, Integer>();
myMap.put('Group1', 21);
myMap.put('Group2', 11);
myMap.put('Apex Soldiers', 10);
myMap.put('Group4', 14);
myMap.put('Winterfell Vacation', 7);

System.debug(
  'myMap contains Apex Soldiers : ' + myMap.keySet().contains('Apex Soldiers')
);
Integer vMemberCount = 0;
if (myMap.keySet().contains('Winterfell Vacation')) {
  vMemberCount = myMap.get('Winterfell Vacation');
  myMap.remove('Winterfell Vacation');
  myMap.put('Winterfell Coders', vMemberCount);
}

System.debug('myMap value is : ' + myMap);

for (String eachKey : myMap.keySet()) {
  if (myMap.get(eachKey) == 10) {
    myMap.put(eachKey, 9);
  }
}
System.debug('myMap value is : ' + myMap);