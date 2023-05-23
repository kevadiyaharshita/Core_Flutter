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

import 'Super_Market.dart';

void print_label()
{
  print("----------------------------------------------");
  print("         WELCOME TO SUPER-MARKET");
  print("----------------------------------------------");
}

void print_product_menu({required List<Map> AllProduct})
{
  //print_label();
  print("----------------------------------------------");
  print("        PRODUCTS OF OXI9");
  print("----------------------------------------------");
  print("Id\tProduct_Name\t\tProduct_Price");
  AllProduct.forEach((element) {
    print("${element['pro_id']}\t${element['pro_name']}\t${element['pro_price']}");
  },);
  print("----------------------------------------------");
  print("Press 1 For Tooth Paste");
  print("Press 2 For Tooth Brush");
  print("Press 3 For Shampoo");
  print("Press 4 For Hair Oil");
  print("Press 5 For Face Wash");
  print("Press 6 For Alovera Gel");
  print("----------------------------------------------");
  print("Press 7 For Goto Search");
  print("Press 8 for Add Customer");
  print("Press 9 For Exit");
  print("Press 0 For Billing");
  print("----------------------------------------------");
}

Map Add_product_fun(Map m)
{
  
  Map m1=Map();
  m.forEach((key, value) { 
    m1[key]=value;
  });
  int qty;
  stdout.write("Enter Quantity :");
  qty=int.parse(stdin.readLineSync()!);

  m1['pro_qty']=qty;
  return m1;
}

void main()
{
  int cust_n;
  int id;
  String name;
  String contact;

  

  Product_List p_list=Product_List();

  print_label();
  stdout.write("How Many Customer :");
  cust_n = int.parse(stdin.readLineSync()!);
  cust_n=1;
  print_label();
  print("     Enter Details Of Customer  ");
  print("----------------------------------------------");
  
  List<Super_Market> customers=List.generate(cust_n,(index){
    print("-------Cutomer ${index+1}/$cust_n-------");
    stdout.write("Enter Id\t\t:");
    id=int.parse(stdin.readLineSync()!);
    stdout.write("Enter Customer Name\t:");
    name=stdin.readLineSync()!;
    stdout.write("Enter Contact Number\t:");
    contact=stdin.readLineSync()!;

    return Super_Market.Customer(cust_id: id, cust_name: name, cust_contact: contact);
  
  });
  int ch,c_id;
  List<Map> tmp_pro=List.empty(growable: true);
 do{
    print_label();
    
    print_product_menu(AllProduct: p_list.AllProduct);
    stdout.write("Enter Your Choice :");
    ch=int.parse(stdin.readLineSync()!);
    Map m=Map();
    int qty,local_id,isadded=0,added_qty=0;
  switch(ch)
  {
    case 1:
        int tmp=0;
         tmp_pro.forEach((element) { 
         local_id=element['pro_id'];
         if(1==local_id)
         {
            isadded=1;
            added_qty=element['pro_qty'];
            tmp=tmp_pro.indexOf(element);
         }
         });
        if(isadded==1)
        {
            stdout.write("Enter Quantity ");
            qty=int.parse(stdin.readLineSync()!);
            qty=qty+added_qty;
            tmp_pro[tmp]['pro_qty']=qty;
        }
         else 
         {
          tmp_pro.add(Add_product_fun(p_list.AllProduct[0]));
         }
         
     
    break;
    case 2:
    int tmp=0;
      tmp_pro.forEach((element) { 
         local_id=element['pro_id'];
         
         if(2==local_id)
         {
            isadded=1;
            added_qty=element['pro_qty']; 
            tmp=tmp_pro.indexOf(element);
         }
         });
        if(isadded==1)
        {
            stdout.write("Enter Quantity ");
            qty=int.parse(stdin.readLineSync()!);
            qty=qty+added_qty;
            tmp_pro[tmp]['pro_qty']=qty;
        }
         else 
         {
          tmp_pro.add(Add_product_fun(p_list.AllProduct[1]));
         }
    break;


    case 3:
        int tmp=0;
      tmp_pro.forEach((element) { 
         local_id=element['pro_id'];
         if(3==local_id)
         {
            isadded=1;
            added_qty=element['pro_qty'];
            tmp=tmp_pro.indexOf(element);
         }
         });
        if(isadded==1)
        {
            stdout.write("Enter Quantity ");
            qty=int.parse(stdin.readLineSync()!);
            qty=qty+added_qty;
            tmp_pro[tmp]['pro_qty']=qty;
            
        }
         else 
         {
          tmp_pro.add(Add_product_fun(p_list.AllProduct[2]));
         }
    break;


    case 4:
        int tmp=0;
     tmp_pro.forEach((element) { 
         local_id=element['pro_id'];
         if(4==local_id)
         {
            isadded=1;
            added_qty=element['pro_qty'];
            tmp=tmp_pro.indexOf(element);
         }
         });
        if(isadded==1)
        {
            stdout.write("Enter Quantity ");
            qty=int.parse(stdin.readLineSync()!);
            qty=qty+added_qty;
            tmp_pro[tmp]['pro_qty']=qty;
        }
         else 
         {
          tmp_pro.add(Add_product_fun(p_list.AllProduct[3]));
         }
    break;

    case 5:
        int tmp=0;
      tmp_pro.forEach((element) { 
         local_id=element['pro_id'];
         if(5==local_id)
         {
            isadded=1;
            added_qty=element['pro_qty'];
            tmp=tmp_pro.indexOf(element);
         }
         });
        if(isadded==1)
        {
            stdout.write("Enter Quantity ");
            qty=int.parse(stdin.readLineSync()!);
            qty=qty+added_qty;
            tmp_pro[tmp]['pro_qty']=qty;
        }
         else 
         {
          tmp_pro.add(Add_product_fun(p_list.AllProduct[4]));
         }
    break;

    case 6:
      int tmp=0;
      tmp_pro.forEach((element) { 
         local_id=element['pro_id'];
         if(6==local_id)
         {
            isadded=1;
            added_qty=element['pro_qty'];
            tmp=tmp_pro.indexOf(element);
         }
         });
        if(isadded==1)
        {
            stdout.write("Enter Quantity ");
            qty=int.parse(stdin.readLineSync()!);
            qty=qty+added_qty;
            tmp_pro[tmp]['pro_qty']=qty;
        }
         else 
         {
          tmp_pro.add(Add_product_fun(p_list.AllProduct[5]));
         }
    break;

    case 0:
    if(tmp_pro.isNotEmpty)
      {
      int check_cust=0;
     do{

        
        stdout.write("Enter Cutomer Id :");
        c_id=int.parse(stdin.readLineSync()!);
        int i;
        for(i=0;i<cust_n;i++)
        {
        
            if(customers[i].cust_id==c_id)
            {
                check_cust=1;
                break;
            }
        }
        if(check_cust==1)
        {
              dynamic bill=0;
              
              customers[i].Product=List.empty(growable: true);
              
              customers[i].Set_Product(m1: tmp_pro);
              tmp_pro.forEach((element) { 
                bill=bill+(element['pro_qty']*element['pro_price']);
              });

              customers[i].setBill(bill);
              customers[i].setDiscount();
              customers[i].getData();
   
        }
        else 
        {
          print("Invalid Customer Id..");
          print("Plz..Re Enter Id !!");
        }
        
      
     }while(check_cust!=1);
     qty=local_id=isadded=added_qty=0;
      tmp_pro=List.empty(growable: true);
     }
     else 
     {
      print("Your Cart Is Empty..!!");
     }
      
     break;

     case 7:
         int ch1;
  
        do{
            print_label();
            print("Press 1 For Search Customer By Their ID ");
            print("Press 2 for Shopping");
            print("Press 0 For Exit");
            stdout.write("Enter Your Choice :");
            ch1=int.parse(stdin.readLineSync()!);

            switch(ch1)
            {
              case 1:
                stdout.write("Enter Customer Id :");
                int cid=int.parse(stdin.readLineSync()!);
                int check_exist=0;
                for(int i=0;i<cust_n;i++)
                {
                  if(customers[i].cust_id==cid)
                  {
                    customers[i].getData();
                    check_exist=1;
                  }
                }
                if(check_exist==0)
                {
                  print("Customer ID Not Found..!!");
                }
              break;

              case 2:
                  ch1=0;
              break;

              case 0:
                exit(0);
            

              default:
              print("Invalid Choice...");
              break;
            }
          }while(ch1!=0);

     break;

     case 8:
    
        stdout.write("Enter Id\t\t:");
        id=int.parse(stdin.readLineSync()!);
        stdout.write("Enter Customer Name\t:");
        name=stdin.readLineSync()!;
        stdout.write("Enter Contact Number\t:");
        contact=stdin.readLineSync()!;
        customers.add(Super_Market.single_Customer(cust_id: id, cust_name: name, cust_contact: contact));
        cust_n++;
        customers.forEach((element) { 
          print(element.cust_id);
        });

     break; 

    case 9:
      exit(0);
  

     default:
      print("Invalid Choice..!");
     break;
        
  }
    
 }while(ch!=9);
  
 
}

