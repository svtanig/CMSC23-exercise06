# Exercise 06 - State Management
## Stephanie Tanig - CMSC 23 - UV1L 
### Problem Domain:
  Learning State management in flutter. Create a simple add to cart and checkout navigation and implementation.
###
- Features:
  - My Catalog Page
    - Displays the list of all the available items that can be added to the cart.
    - It has a Floating Action button that opens up the Cart page
    - Each Item tile has its own add button that adds the item to the cart when pressed.

  - Cart Page
      - This page displays all the contents of the cart in the form of tiles. Each tile displays the Item name and a delete button.
      - It has 2 floating action buttons:
          - Reset Button
              - Deletes all the contents of the cart.
          - Checkout Button
              - Goes to the Checkout Page
      - It also has a text at the button that navigates to the MyCatalog Page when pressed.
        
  - Checkout Page 
     - Just like the cart page. Each tile displays the Item name and price.
     - It has a 'Pay Now' button that sets the total value to zero, deletes the entire contents of the cart, and goes to the my catalog page when pressed, a snackbar that prompts the succesful payment also appears.


- Reflection:
   - This week's topic and exercise were easy to understand and implement since everything was laid out clearly in the handout. I also had fun doing this exercise because I learned the concept of providers and models which allowed easier access and reusability of code while maintaining the state.
