package com.pajil.project3fazila

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.ListView
import com.example.project3fazila.R

class MainActivity : AppCompatActivity() {
    private var fList : ListView? = null
    private  var foodAdapter : FoodAdapter? = null
    private var foodList : ArrayList<FoodModel>? = null

    val imageFood = intArrayOf(R.drawable.burgerrr,
                               R.drawable.corndddd,
                               R.drawable.friedchicken,
                               R.drawable.hothot,
                               R.drawable.kentanggoreng,
                               R.drawable.pizzaa,
                               R.drawable.pasta,
                               R.drawable.spagetti,
                               R.drawable.steak,
                               R.drawable.onion,)

    val nameFoodList = arrayOf(" Burger", " Corndog", " Fried Chicken", " Hotdog", " French Fries",
        " Pizza", " Pasta", " Spagetti", " Steak", " Onion Rings")

    val priceFoodList = arrayOf(" Rp. 45000", " Rp. 25000", " Rp. 52000", " Rp. 50000", " Rp. 30000",
        " Rp. 87000", " Rp. 68000", " Rp. 79000", " Rp. 105000", " Rp. 62000")

    val desc = arrayOf(" Roti, Keju, Daging, Tomat, Acar, Saos Sambal, Saos Tomat, Garam",
                       " Tepung Terigu, Tepung Roti, Keju Mozarella, Saous, Mustard, Mayonaise, Garam",
                       " Tepung, Ayam, Saos, Garam",
                       " Roti, Sosis, Saos, Garam",
                       " Kentang, Saos, Garam",
                       " Tepung, Saos, Mayonaise, Mustard, Topping, Parsley, Daging, Garam",
                       " Pasta, Saos, Parsley, Garam",
                       " Spagetti, Saos, Saos Tomat, minyak, Garam",
                       " Daging, tomat, wortel, jagung, buncis, kentang, mentega, Garam",
                       " Bombai, Tepung, Parsley, minyak, Garam")

    val rate = intArrayOf(R.drawable.rating1,
                          R.drawable.rating1,
                          R.drawable.rating1,
                          R.drawable.rating1,
                          R.drawable.rating1,
                          R.drawable.rating1,
                          R.drawable.rating1,
                          R.drawable.rating1,
                          R.drawable.rating1,
                          R.drawable.rating1)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        fList = findViewById(R.id.list1)
        //Log.d("Success", foodList!!.size.toString()+"")
        foodList = populateList()
        foodAdapter = FoodAdapter(this@MainActivity, foodList!!)
        fList!!.adapter = foodAdapter

    }

    private fun populateList(): ArrayList<FoodModel>? {
        val list = ArrayList<FoodModel>()
        for(i in 0..9){
            val food = FoodModel()
            food.setFoodName(nameFoodList[i])
            food.setFoodImage(imageFood[i])
            food.setFoodPrice(priceFoodList[i])
            food.setFoodDesc(desc[i])
            food.setFoodRate(rate[i])
            list.add(food)
        }
        return list
    }
}