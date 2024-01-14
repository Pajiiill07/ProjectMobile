package com.pajil.project2fazila

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.EditText
import android.widget.Spinner
import android.widget.TextView
import android.widget.Toast

class DuaActivity : AppCompatActivity(), AdapterView.OnItemSelectedListener {
    val tipKam = arrayOf<String>("Executive", "Standard", "Economy", "President Suit")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_dua)
        val nomor = findViewById<EditText>(R.id.editNo)
        val harga = findViewById<EditText>(R.id.editHrg)
        val hari = findViewById<EditText>(R.id.editHari)
        val biaya = findViewById<EditText>(R.id.editBiaya)
        val proses = findViewById<Button>(R.id.btnProsses)
        val output = findViewById<TextView>(R.id.txtOutput)
        val tipe = findViewById<Spinner>(R.id.spinTipe)
        tipe.onItemSelectedListener=this
        val ArrAd:ArrayAdapter<*> = ArrayAdapter<Any?>(this@DuaActivity, R.layout.spin_style , tipKam)
        ArrAd.setDropDownViewResource(R.layout.spin_style)
        tipe.adapter = ArrAd
        proses.setOnClickListener {
            val nomor = nomor.text
            val harga = harga.text.toString().toInt()
            val spin = tipe.selectedItem
            val hari = hari.text.toString().toInt()
            val biaya = biaya.text.toString().toDouble()
            val diskon = if (hari > 10) 0.1 * (harga * hari) else 0.0
            val total = (harga * hari) + biaya - diskon

            output.text = ("Transaksi Hotel : " +
                    "\nNomor Kamar     : $nomor " +
                    "\nHarga                   : $harga " +
                    "\nTipe Kamar         : $spin " +
                    "\nJumlah Hari        : $hari " +
                    "\nTotal Transaksi   : $total")
        }
    }


    override fun onItemSelected(p0: AdapterView<*>?, p1: View?, p2: Int, p3: Long) {
        val pilihanTipe:String = p0?.getItemAtPosition(p2).toString()
        Toast.makeText(this, "Tipe Kamar Dipilih : $pilihanTipe", Toast.LENGTH_LONG).show()
    }

    override fun onNothingSelected(p0: AdapterView<*>?) {
        TODO("Not yet implemented")
    }
}