package com.lala.latihanfazila

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class MainActivity : AppCompatActivity() {
    lateinit var carList :RecyclerView
    lateinit var AdapterCar : MobilAdapter
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        carList = findViewById(R.id.recItem)

        val linearLayout = LinearLayoutManager(this)
        carList.layoutManager =linearLayout

        val mobAdp = MobilData.creatData()
        AdapterCar = MobilAdapter(mobAdp)

        carList.layoutManager = LinearLayoutManager(this)
        carList.adapter = AdapterCar

    }
}