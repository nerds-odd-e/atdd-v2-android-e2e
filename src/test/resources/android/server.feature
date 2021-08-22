# language: zh-CN
功能: 服务器

  场景: 服务器
    假如存在商品类别
      | categoryName | categoryDescription | categoryDiscount | categoryImageUrl                                                                                           |
      | Electronic   | Electric Items      | 10%              | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeNSONF3fr9bZ6g0ztTAIPXPRCYN9vtKp1dXQB2UnBm8n5L34r   |
      | Furnitures   | Furnitures Items    | 15%              | https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRaUR5_wzLgBOuNtkWjOxhgaYaPBm821Hb_71xTyQ-OdUd-ojMMvw |
    假如存在"Microwave oven"电器
      | productName         | description                                         | longDescription                                                                                                                                                                                                      | mrp  | discount | salePrice | orderQty | imageUrl                                                                                       | productId |
      | Solo Microwave Oven | IFB 17PMMEC1 17 L Solo Microwave Oven               | Explore the joys of cooking with IFB 17PM MEC1 Solo Microwave Oven. The budget-friendly appliance has several nifty features including Multi Power Levels and Speed Defrost to make cooking a fun-filled experience. | 5490 | 10       | 4290      | 0        | http://img6a.flixcart.com/image/microwave-new/3/3/z/ifb-17pmmec1-400x400-imae4g4uzzjsumhk.jpeg | oven_1    |
      | Solo Microwave Oven | Bajaj 1701MT 17 L Solo Microwave Oven               | Explore the joys of cooking with IFB 17PM MEC1 Solo Microwave Oven. The budget-friendly appliance has several nifty features including Multi Power Levels and Speed Defrost to make cooking a fun-filled experience. | 5000 | 10       | 4290      | 0        | http://img6a.flixcart.com/image/microwave-new/z/j/p/bajaj-1701mt-400x400-imae4ty4vyzhaagz.jpeg | oven_2    |
      | Solo Microwave Oven | Whirlpool MW 25 BG 25 L Grill Microwave Oven        | http://img6a.flixcart.com/image/microwave-new/a/y/f/whirlpool-mw-25-bg-400x400-imaebagzstnngjqt.jpeg                                                                                                                 | 5290 | 10       | 4290      | 0        | http://img6a.flixcart.com/image/microwave-new/z/j/p/bajaj-1701mt-400x400-imae4ty4vyzhaagz.jpeg | oven_3    |
      | Solo Microwave Oven | Morphy Richards 25CG 25 L Convection Microwave Oven | http://img5a.flixcart.com/image/microwave-new/v/q/y/morphy-richard-25cg-400x400-imadxecx93kb6q4f.jpeg                                                                                                                | 5300 | 12       | 4290      | 0        | http://img6a.flixcart.com/image/microwave-new/z/j/p/bajaj-1701mt-400x400-imae4ty4vyzhaagz.jpeg | oven_4    |
      | Solo Microwave Oven | IFB 25SC4 25 L Convection Microwave Oven            | http://img5a.flixcart.com/image/microwave-new/v/q/y/morphy-richard-25cg-400x400-imadxecx93kb6q4f.jpeg                                                                                                                | 5190 | 10       | 4290      | 0        | http://img6a.flixcart.com/image/microwave-new/y/k/m/ifb-25sc4-400x400-imaef2pztynvqjaf.jpeg    | oven_5    |
    假如存在"Television"电器
      | productName | description                  | longDescription                                                                                                                                                     | mrp   | discount | salePrice | orderQty | imageUrl                                                                                           | productId |
      | LED         | Vu 80cm (32) HD Ready LED TV | Enjoy movie night with the family on this 80cm LED TV from Vu. With an A+ grade panel, this TV renders crisp details that make what you're watching look realistic. | 16000 | 12       | 13990     | 0        | http://img5a.flixcart.com/image/television/g/y/w/vu-32k160mrevd-400x400-imae93ahpwtchzys.jpeg      | tv_1      |
      | LED 1       | Vu 80cm (32) HD Ready LED TV | Enjoy movie night with the family on this 80cm LED TV from Vu. With an A+ grade panel, this TV renders crisp details that make what you're watching look realistic. | 17000 | 12       | 13990     | 0        | http://img6a.flixcart.com/image/television/z/f/w/bpl-bpl080d51h-400x400-imaeeztqvhxbnam2.jpeg      | tv_2      |
      | LED 2       | Vu 80cm (32) HD Ready LED TV | Enjoy movie night with the family on this 80cm LED TV from Vu. With an A+ grade panel, this TV renders crisp details that make what you're watching look realistic. | 18000 | 12       | 13990     | 0        | http://img6a.flixcart.com/image/television/f/b/z/micromax-43x6300mhd-400x400-imaednxv8bgznhbx.jpeg | tv_3      |
      | LED 3       | Vu 80cm (32) HD Ready LED TV | Enjoy movie night with the family on this 80cm LED TV from Vu. With an A+ grade panel, this TV renders crisp details that make what you're watching look realistic. | 16000 | 12       | 13990     | 0        | http://img6a.flixcart.com/image/television/a/w/z/vu-32d6545-400x400-imaebagzbpzqhmxc.jpeg          | tv_4      |
      | LED 4       | Vu 80cm (32) HD Ready LED TV | Enjoy movie night with the family on this 80cm LED TV from Vu. With an A+ grade panel, this TV renders crisp details that make what you're watching look realistic. | 16000 | 12       | 13990     | 0        | http://img6a.flixcart.com/image/television/s/r/t/lg-32lf550a-400x400-imae8nyvxyjds3qu.jpeg         | tv_5      |
    假如存在"Vaccum Cleaner"电器
      | productName               | description                                            | longDescription                                                                                                                                                                                                                    | mrp  | discount | salePrice | orderQty | imageUrl                                                                                                                    | productId   |
      | Easy Clean Plus Hand-held | Eureka Forbes Easy Clean Plus Hand-held Vacuum Cleaner | The Eureka Forbes Easy Clean vacuum cleaner is best for those who are looking for a machine that makes cleaning easier and is convenient to use. It is a compact and powerful machine with high suction and low power consumption. | 2699 | 10       | 2566      | 0        | http://img5a.flixcart.com/image/vacuum-cleaner/e/e/g/eureka-forbes-easy-clean-easy-clean-plus-400x400-imae7dam5ey3vaeb.jpeg | v_cleaner_1 |
      | Easy Clean Plus Hand-held | Eureka Forbes Easy Clean Plus Hand-held Vacuum Cleaner | The Eureka Forbes Easy Clean vacuum cleaner is best for those who are looking for a machine that makes cleaning easier and is convenient to use. It is a compact and powerful machine with high suction and low power consumption. | 2699 | 10       | 2566      | 0        | http://img6a.flixcart.com/image/vacuum-cleaner/j/e/x/nova-vc-761h-plus-vacuum-cleaner-400x400-imaecmhyadgxzzpg.jpeg         | v_cleaner_2 |
      | Easy Clean Plus Hand-held | Eureka Forbes Easy Clean Plus Hand-held Vacuum Cleaner | The Eureka Forbes Easy Clean vacuum cleaner is best for those who are looking for a machine that makes cleaning easier and is convenient to use. It is a compact and powerful machine with high suction and low power consumption. | 2699 | 10       | 2566      | 0        | http://img6a.flixcart.com/image/vacuum-cleaner/y/g/b/eureka-forbes-car-clean-car-clean-400x400-imae376v2kta5utj.jpeg        | v_cleaner_3 |
      | Easy Clean Plus Hand-held | Eureka Forbes Easy Clean Plus Hand-held Vacuum Cleaner | The Eureka Forbes Easy Clean vacuum cleaner is best for those who are looking for a machine that makes cleaning easier and is convenient to use. It is a compact and powerful machine with high suction and low power consumption. | 2699 | 10       | 2566      | 0        | http://img5a.flixcart.com/image/vacuum-cleaner/m/y/g/sarita-115-400x400-imae9b5zhzjagykx.jpeg                               | v_cleaner_4 |
      | Easy Clean Plus Hand-held | Eureka Forbes Easy Clean Plus Hand-held Vacuum Cleaner | The Eureka Forbes Easy Clean vacuum cleaner is best for those who are looking for a machine that makes cleaning easier and is convenient to use. It is a compact and powerful machine with high suction and low power consumption. | 2699 | 10       | 2566      | 0        | http://img6a.flixcart.com/image/vacuum-cleaner/s/c/j/eureka-forbes-trendy-steel-trendy-steel-400x400-imae7vashkfj2hgk.jpeg  | v_cleaner_5 |
    假如存在"Tables"家具
      | productName       | description                            | longDescription                                                                                                                                                                                                            | mrp   | discount | salePrice | orderQty | imageUrl                                                                                                                              | productId |
      | Wood Coffee Table | Royal Oak Engineered Wood Coffee Table | With a contemporary design and gorgeous finish, this coffee table will be a brilliant addition to modern homes and even offices. The table has a glass table top with a floral print, and a pull-out drawer in the center. | 10200 | 12       | 7000      | 0        | http://img6a.flixcart.com/image/coffee-table/q/f/4/ct15bl-mdf-royal-oak-dark-400x400-imaeehkd8xuheh2u.jpeg                            | table_1   |
      | Wood Coffee Table | Royal Oak Engineered Wood Coffee Table | With a contemporary design and gorgeous finish, this coffee table will be a brilliant addition to modern homes and even offices. The table has a glass table top with a floral print, and a pull-out drawer in the center. | 10200 | 12       | 7000      | 0        | http://img5a.flixcart.com/image/coffee-table/c/z/e/afr1096-sm-mango-wood-onlineshoppee-brown-400x400-imaea6c2bhwz8tns.jpeg            | table_2   |
      | Wood Coffee Table | Royal Oak Engineered Wood Coffee Table | With a contemporary design and gorgeous finish, this coffee table will be a brilliant addition to modern homes and even offices. The table has a glass table top with a floral print, and a pull-out drawer in the center. | 10200 | 12       | 7000      | 0        | http://img5a.flixcart.com/image/coffee-table/u/n/p/brass-table0016-rosewood-sheesham-zameerwazeer-beige-400x400-imaedwk5ksph9ut2.jpeg | table_3   |
      | Wood Coffee Table | Royal Oak Engineered Wood Coffee Table | With a contemporary design and gorgeous finish, this coffee table will be a brilliant addition to modern homes and even offices. The table has a glass table top with a floral print, and a pull-out drawer in the center. | 10200 | 12       | 7000      | 0        | http://img6a.flixcart.com/image/coffee-table/v/h/h/side-tb-53-ad-particle-board-debono-acacia-dark-matt-400x400-imaecnctfgjahsnu.jpeg | table_4   |
      | Wood Coffee Table | Royal Oak Engineered Wood Coffee Table | With a contemporary design and gorgeous finish, this coffee table will be a brilliant addition to modern homes and even offices. The table has a glass table top with a floral print, and a pull-out drawer in the center. | 10200 | 12       | 7000      | 0        | http://img5a.flixcart.com/image/coffee-table/c/z/e/afr1096-sm-mango-wood-onlineshoppee-brown-400x400-imaea6c2bhwz8tns.jpeg            | table_5   |
      | Wood Coffee Table | Royal Oak Engineered Wood Coffee Table | With a contemporary design and gorgeous finish, this coffee table will be a brilliant addition to modern homes and even offices. The table has a glass table top with a floral print, and a pull-out drawer in the center. | 10200 | 12       | 7000      | 0        | http://img5a.flixcart.com/image/coffee-table/k/y/h/1-particle-board-wood-an-wood-coffee-400x400-imae7uvzqsf4ynan.jpeg                 | table_6   |
    当启动服务器