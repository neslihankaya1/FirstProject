String sentence = 'My favorite time of year is summer';
List<String> sentenceSplit = sentence.split(' ');
Integer longestCharCount = sentenceSplit.get(0).length();
System.debug('longestCharCount value is : ' + longestCharCount); 
for(String each : sentenceSplit) {
   longestCharCount = Math.max(longestCharCount, each.length());
}
   System.debug('longestCharCount value is : ' + longestCharCount); 
   