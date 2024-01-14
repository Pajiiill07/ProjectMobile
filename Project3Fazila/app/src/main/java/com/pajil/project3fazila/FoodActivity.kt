package com.pajil.project3fazila

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.project3fazila.R

class FoodActivity : AppCompatActivity() {
    lateinit var fLst : RecyclerView
    lateinit var fdAdpRec : FoodRecAdapter
    //private lateinit var fdLst : ArrayList<FoodData>
    //private lateinit var fData: FoodData


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_food)
        fLst = findViewById(R.id.list1Rec)
        layoutRecFood()
        recFoodData()

        /*
        val linearLayout = LinearLayoutManager(this)
        fLst.layoutManager = linearLayout

        val foodListRec = FoodData.creatDataFood()
        fdAdpRec = FoodRecAdapter(foodListRec)

        fLst.layoutManager = LinearLayoutManager(this)
        fLst.adapter = fdAdpRec
         */

    }

    private fun layoutRecFood() {
        fLst.apply {
            layoutManager = LinearLayoutManager(this@FoodActivity)
            fdAdpRec = FoodRecAdapter()
            adapter = fdAdpRec
        }
    }

    private fun recFoodData() {
        val foodListRec = FoodData.creatDataFood()
        fdAdpRec.getListFood(foodListRec)
    }
}