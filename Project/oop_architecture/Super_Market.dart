/*

2. WAP to simulate Super Market Billing system in which...
Create multiple customers through array of object.
When each customer is entered (instantiated) note their cust_id, cust_name, cust_contact
Create a menu driven system which gives the customer verities of categories and their products.
Whenever user selects any product simulate the feature to add product in cust_cart which will contain 4 parameters 
for each product pro_id, pro_name, pro_qty, pro_price.
Apply billing and discount criteria's on the final amount after calculating each customer's number of product's price.
                                 10% disc. on 500 - 1500
                                 20% disc. on 1500 - 3500
                                 25% disc. on 3500 - 6500
                                 30% disc. for above all.
add searching functionalities by cust_id which gives cust_id, cust_name, cust_contact, list of products, 
their price ang quantity and include final amount and discount amount.
*/


import 'dart:io';

class Super_Market
{
    
    late int cust_id;
    late String cust_name;
    late String cust_contact;
    late List<Map> Product=List.empty(growable: true);
         int bill=0;
    late int disc;
    late int amount;

    

  //  late int pro_id;
  //  late String pro_name;
  //  late int pro_price;

    Super_Market.single_Customer({required this.cust_id,required this.cust_name,required this.cust_contact});

     void Set_Product({required List<Map> m1})
     {
      // this.pro_id=pro_id;
      // this.pro_name=pro_name;
      // this.pro_price=pro_price;

      m1.forEach((element) { 
        Product.add(element);
      });
     
     }

     void setBill(int bill)
     {
      this.bill=bill;
     }

     void setDiscount()
     {
      if(bill>=500 && bill<1500)
      {
        disc=(bill*10~/100);
        amount=bill-disc;
      }
      else if(bill>=1500 && bill<3500)
      {
        disc=(bill*20~/100);
        amount=bill-disc;
      }
      else if(bill>=3500 && bill<6500)
      {
        disc=(bill*25~/100);
        amount=bill-disc;
      }
      else if(bill>=6500)
      {
        disc=(bill*30~/100);
        amount=bill-disc;
      }
     }

     void getData()
     {
      print("--------------------------------------------------------------------------------------");
      print("                 BILL");
      print("--------------------------------------------------------------------------------------");

       print("Id\t\t: $cust_id");
       print("Name\t\t: $cust_name");
       print("Contact\t\t: $cust_contact");
      print("-------------------------------------------------------------------------------------");

      if(Product.isNotEmpty)
      {
          print("Id\tName\t\t\tquantity\tPrice\tAmount");
          int amt;
          Product.forEach((element) {
            amt=element['pro_qty']*element['pro_price'];
            print("${element['pro_id']}\t${element['pro_name']}\t${element['pro_qty']}\t\t${element['pro_price']}\t$amt");
          });
          print("-----------------------------------------------------------------------------------");
          print("Bill\t\t\t\t\t\t\t$bill");
          print("Discount\t\t\t\t\t\t$disc");
          print("Total Amount\t\t\t\t\t\t$amount");
          print("-----------------------------------------------------------------------------------");
      }
      else 
      {
          print("Your Cart Is Empty..!!");
      }

       
     }


     Super_Market.Customer({required this.cust_id,required this.cust_name,required this.cust_contact});
   
}



// class Product 
// {
//    int pro_id;
//    String pro_name;
//    int pro_price;

//    Product({required this.pro_id,required this.pro_name,required this.pro_price});
// }

// class Customer extends Product
// {
//      int cust_id;
//      String cust_name;
//      String cust_contact;
//      List<int> pro_id=List.filled(6, 0);
  
//      Customer.details({required this.cust_id,required this.cust_name,required this.cust_contact});
// }



