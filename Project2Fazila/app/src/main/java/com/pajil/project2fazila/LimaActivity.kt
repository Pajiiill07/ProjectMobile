package com.pajil.project2fazila

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView

class LimaActivity : AppCompatActivity() {
    lateinit var outnim : TextView
    lateinit var outprodi : TextView
    lateinit var outUas : TextView
    lateinit var outharian : TextView
    lateinit var nilaiakhir : TextView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_lima)
        outnim = findViewById(R.id.txtOutNim)
        outprodi = findViewById(R.id.txtOutProdi)
        outUas = findViewById(R.id.txtOutUas)
        outharian = findViewById(R.id.txtOutHarian)
        nilaiakhir = findViewById(R.id.txtTotal)
        val bundle = intent.extras
        if (bundle != null){
            outnim.text = "Nim Mahasiswa : ${bundle.getString("nim")}"
            outprodi.text = "Prodi Mahasiswa : ${bundle.getString("prodi")}"
            outUas.text = "Uas Mahasiswa : ${bundle.getString("uas")}"
            outharian.text = "Harian Mahasiswa : ${bundle.getString("harian")}"
            nilaiakhir.text = "Nilai AKhir Mahasiswa : ${bundle.getString("nilai akhir")}"
        }
    }
}