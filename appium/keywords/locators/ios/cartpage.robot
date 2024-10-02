*** Variables ***

### Cart Page ###
${cart_page_product_name}                         //XCUIElementTypeStaticText[@index="7"]
${cart_page_product_amount}                       //XCUIElementTypeCell//XCUIElementTypeStaticText[@index='11']
${cart_page_my_cart_title}                        //XCUIElementTypeStaticText[@name="My Cart"]
${cart_page_product_price}                        //XCUIElementTypeStaticText[contains(@name,"$ ")]