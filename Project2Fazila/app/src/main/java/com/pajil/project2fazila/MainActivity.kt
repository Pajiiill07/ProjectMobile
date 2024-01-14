package com.pajil.project2fazila

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    lateinit var barang : EditText
    lateinit var jumlah : EditText
    lateinit var satuan : EditText
    lateinit var harga : EditText
    lateinit var proses : Button
    lateinit var transaksi : TextView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        barang = findViewById(R.id.editBarang)
        jumlah = findViewById(R.id.editJumlah)
        satuan = findViewById(R.id.editSatuan)
        harga = findViewById(R.id.editHarga)
        proses = findViewById(R.id.btnProses)
        transaksi = findViewById(R.id.txtTransaksi)
        proses.setOnClickListener {
            transaksi.text = ("Transaksi \nNama Barang : "+barang.text+"\nJumlah            : "+jumlah.text+" "+satuan.text+"\nHarga               : "+harga.text)
        }
    }
}