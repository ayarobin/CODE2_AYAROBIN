class Square {
 // initialize variables
 // creating array of strings called data
 String[] data;
 int j;
 int k;
 color c;
 
   // when a square is created, take in an array of strings,
   // and take in 2 numerical values (these will be multipled
   // to determine x and y position of the squares we draw)
   Square (String[] i, int user1, int user2) {
     data = i;
     j = user1;
     k = user2;
     c =  color(random(255), random(255), random(255));
   }
  
 

// data = ["0,1,2,3,4,5", "50,100,75,25,30,50"]
// data [0] = "0,1,2,3,4,5"
// data [1] = "50,100,75,25,30,50"
// we want:
// anArray [0] = "0"
// then we can call int(anArray[0]) and it will = 0

// we must create a new array to split our data:
// data [0] gets split and placed into a new array, splitData
// splitData = ["0", "1", "2", "3", "4", "5"]

// data [1] gets split and placed into a new array, splitDataSize
// we want an array to hold our data size:
// splitDataSize = ["50", "100", "75", "25", "30", "50"]


void display() {
  rectMode(CENTER);
  fill (c);
  
  // create an array called splitData
  // and go through the entry found at data [0] = "0,1,2,3,4,5"
  // add each value to splitData seperated by commas 
  // splitData is now equal to ["0", "1", "2", "3", "4", "5"]
  // ** remember that splitData is still an array of strings
 String[] splitData = data[0].split(",");
  
  // create an array called splitDataSize
  // and go through the entry found at data [1] = "50,100,75,25,30,50"
  // add each value to splitDataSize seperated by commas 
  // splitDataSize is now equal to ["50", "100", "75", "25", "30", "50"]
  // ** remember that splitDataSize is still an array of strings
  String[] splitDataSize = data[1].split(",");
  
  // go through this loop for the length of splitData (which is 6 times)
  // that means 6 of our shapes will be drawn
  // we use int when calling the value of the array --> int(splitData[i]) 
  // because we are dealing with arrays of strings and not integers yet
  for (int i = 0; i < splitData.length; i++) {
    // rect (xCoord yCoord width height)
    rect (j * int(splitData[i]), k * int(splitData[i]), int(splitDataSize[i]), int(splitDataSize[i]));
  }
}
}
