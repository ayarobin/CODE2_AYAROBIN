//6 diff items with 6 prices
//receit with 10 items
//come up with 10 questions

//(pt 0)declaring array
String[] shopInventory; 

//(pt 1) creating the size of array
shopInventory = new String[6]; 

//(pt 2) assigning values 
shopInventory [0] = "apples";
shopInventory [1] = "tomatoes";
shopInventory [2] = "potatoes";
shopInventory [3] = "peppers";
shopInventory [4] = "carrots";
shopInventory [5] = "bananas";



//if you want to write pt 0, pt 1 and 2 combined, write it like this:
String[] shopInve = {"apples", "tomatoes", "potatoes", "peppers", "carrots", "bananas"};
//this is another array list for the item prices that is written more concisly 
float[] storePrice = {10.25, 3.4, 2, 25, 10, 4.4};




int[] receipt = new int [10]; //length of receit

int totalPrice = 0;
for (int i = 0; i < receipt.length; i++) {
  receipt[i] = floor(random(shopInventory.length));
  println(shopInventory[receipt[i]]);
  println("$" + storePrice[receipt[i]]);
  
  println(receipt[i]);
  totalPrice += storePrice[receipt[i]];
}

println("Total Price:" + totalPrice);

//QUESTIONS ANSWERED IN GOOGLE DOCS
//What is floor?
  //is there a more efficient way of writing the apples, tomatoes list? --> use String[] itemName = {
//Why would you not use String[] itemName = {
//How would you know to put receipt[i] into the for loops
//How do you use println to debug?
//What are components of an array that must be there?
