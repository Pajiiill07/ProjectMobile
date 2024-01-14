package com.example.projectkuis_fazila

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.CheckBox
import android.widget.EditText
import android.widget.RadioButton
import android.widget.RadioGroup
import android.widget.Spinner
import android.widget.TextView

class MainActivity : AppCompatActivity(), AdapterView.OnItemSelectedListener {
    val SpinTipe = arrayOf<String>("LB120/LT180","LB90/LT150","LB45/LT120")
    val SpinJenis = arrayOf<String>("Mawar","Melati","Anggrek")

    lateinit var rgBayar : RadioGroup
    lateinit var rbBayar : RadioButton

    lateinit var kitchenset : CheckBox
    lateinit var taman : CheckBox
    lateinit var ac1 : CheckBox
    lateinit var ac2 : CheckBox
    lateinit var lemari : CheckBox
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val nama = findViewById<EditText>(R.id.editNama)
        val harga = findViewById<EditText>(R.id.editHarga)
        val uang = findViewById<EditText>(R.id.editUang)
        val tgl = findViewById<EditText>(R.id.editTanggal)
        val diskon = findViewById<EditText>(R.id.editDiskon)
        val rgBayar = findViewById<RadioGroup>(R.id.rgBayar)
        kitchenset = findViewById(R.id.chkKitchen)
        taman = findViewById(R.id.chkTaman)
        ac1 = findViewById(R.id.chkAC1)
        ac2 = findViewById(R.id.chkAC2)
        lemari = findViewById(R.id.chkLemari)
        val proses = findViewById<Button>(R.id.btnProses)
        val output = findViewById<TextView>(R.id.txtOutput)

        val tipe = findViewById<Spinner>(R.id.spinTipe)
        tipe.onItemSelectedListener=this
        val AA:ArrayAdapter<*> = ArrayAdapter<Any?>(this@MainActivity, R.layout.spin_style, SpinTipe)
        AA.setDropDownViewResource(R.layout.spin_style)
        tipe.adapter =AA

        val jenis = findViewById<Spinner>(R.id.spinTipe)
        tipe.onItemSelectedListener=this
        val AB:ArrayAdapter<*> = ArrayAdapter<Any?>(this@MainActivity, R.layout.spin_style, SpinJenis)
        AB.setDropDownViewResource(R.layout.spin_style)
        tipe.adapter =AB

        proses.setOnClickListener {

        }
    }

    override fun onItemSelected(p0: AdapterView<*>?, p1: View?, p2: Int, p3: Long) {
        TODO("Not yet implemented")
    }

    override fun onNothingSelected(p0: AdapterView<*>?) {
        TODO("Not yet implemented")
    }
}