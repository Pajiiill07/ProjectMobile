package com.pajil.project3fazila

class FoodData {
    companion object{
        fun creatDataFood():ArrayList<Food> {
                var list = ArrayList<Food>()
                list.add(
                    Food(
                        "https://www.mcdelivery.co.id/id/static/1696484694804/assets/62/products/100355.png?",
                        "Double Cheeseburger McFlavor Fries",
                        "Rp. 67000",
                        "Double Cheeseburger + Creamy Garlic + Cocacola",
                        "Delivery in 40 minutes",
                        "20%",
                        "4.5"
                    )
                )
                list.add(
                    Food(
                        "https://www.mcdelivery.co.id/id/static/1696484694804/assets/62/products/100357.png?",
                        "Double Big Mac® McFlavor Fries",
                        "Rp. 89500",
                        "Double Big Mac + Creamy Garlic + Cocacola",
                        "Delivery in 40 minutes",
                        "30%",
                        "4.8"
                    ),
                )
                list.add(
                    Food(
                        "https://www.mcdelivery.co.id/id/static/1696484694804/assets/62/products/185054.png?",
                        "Creamy Garlic McFlavor Fries with Bread Crumb",
                        "Rp. 28000",
                        "Creamy Garlic",
                        "Delivery in 40 minutes",
                        "40%",
                        "4.7"
                    ),
                )
                list.add(
                    Food(
                        "https://www.mcdelivery.co.id/id/static/1696484694804/assets/62/products/233023.png?",
                        "PROMO Bundling - McFlurry Es Kopyor Kelapa",
                        "Rp. 26000",
                        "Roti, Keju, Daging, Garam, Margarin",
                        "Delivery in 40 minutes",
                        "20%",
                        "4.2"
                    ),
                )
                list.add(
                    Food(
                        "https://files.kfcku.com/uploads/media/dummy/food/kfc-web_superstar-1_l.png",
                        "SUPER STAR 1",
                        "Rp. 145000",
                        "2 Nasi + 2 ptg Ayam + Fun Fries + 2 Minuman + CD",
                        "Delivery in 40 minutes",
                        "50%",
                        "4.3"
                    ),
                )
                list.add(
                    Food(
                        "https://files.kfcku.com/uploads/media/dummy/food/praktis/kfc-web_colonelyakinikuc_l.png",
                        "COLONEL YAKINIKU COMBO",
                        "Rp. 145000",
                        "Colonel Yakiniku + Wingers + Minuman",
                        "Delivery in 40 minutes",
                        "20%",
                        "4.8"
                    ),
                )
                list.add(
                    Food(
                        "https://www.pizzahut.co.id/assets/images/digital_menu/phr/menu/pizza/cheeseburger.png",
                        "CHEESEBURGER",
                        "Rp. 145000",
                        "Daging Sapi Cincang Berbumbu, Keju Cheddar, Onion, Tomat, Beef Bits, Saus Mustard, dan Keju Mozarella",
                        "Delivery in 40 minutes",
                        "80%",
                        "4.9"
                    ),
                )
                list.add(
                    Food(
                        "https://www.pizzahut.co.id/assets/images/digital_menu/phr/menu/pasta-rice/flaming-hot.png",
                        "FLAMING HOT CHICKEN",
                        "Rp. 145000",
                        "Pasta Fettuccine, Ayam, Sosis Ayam, Minyak Cabe, dan Daun Bawang",
                        "Delivery in 40 minutes",
                        "20%",
                        "4.8"
                    ),
                )
                return list
            }
    }
}