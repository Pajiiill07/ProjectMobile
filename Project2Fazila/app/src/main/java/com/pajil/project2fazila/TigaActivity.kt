package com.pajil.project2fazila

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
import android.widget.Toast
import java.lang.StringBuilder

class TigaActivity : AppCompatActivity(), AdapterView.OnItemSelectedListener {
    val spinAsal = arrayOf<String>("Padang","Jakarta","Yogyakarta","Medan","Pekanbaru")
    val spinTujuan = arrayOf<String>("Bandung","Aceh","Lampung","Papua","Bogor")
    val spinJam = arrayOf<String>("5.00 am","10.00 am","1.00 pm","4.00pm","6.00 pm")

    lateinit var rgBayar : RadioGroup
    lateinit var rbBayar : RadioButton
    lateinit var suitcase : CheckBox
    lateinit var box : CheckBox
    lateinit var bag : CheckBox

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_tiga)
        val id = findViewById<EditText>(R.id.editId)
        val nama = findViewById<EditText>(R.id.editNama)
        val harga = findViewById<EditText>(R.id.editHtkt)
        rgBayar = findViewById<RadioGroup>(R.id.rgBayar)
        val jumlah = findViewById<EditText>(R.id.editJumBeli)
        suitcase = findViewById(R.id.chkSuitcase)
        box = findViewById(R.id.chkBox)
        bag = findViewById(R.id.chkBag)
        val proses = findViewById<Button>(R.id.btnPrs)
        val DataOutput = findViewById<TextView>(R.id.txtOutput)


        val asal = findViewById<Spinner>(R.id.spinAsal)
        asal.onItemSelectedListener=this
        val ArrAd: ArrayAdapter<*> = ArrayAdapter<Any?>(this@TigaActivity, R.layout.spin_style , spinAsal)
        ArrAd.setDropDownViewResource(R.layout.spin_style)
        asal.adapter = ArrAd

        val tujuan = findViewById<Spinner>(R.id.spinTujuan)
        tujuan.onItemSelectedListener=this
        val ArrA: ArrayAdapter<*> = ArrayAdapter<Any?>(this@TigaActivity, R.layout.spin_style , spinTujuan)
        ArrA.setDropDownViewResource(R.layout.spin_style)
        tujuan.adapter = ArrA

        val jam = findViewById<Spinner>(R.id.spinJam)
        jam.onItemSelectedListener=this
        val AA: ArrayAdapter<*> = ArrayAdapter<Any?>(this@TigaActivity, R.layout.spin_style , spinJam)
        AA.setDropDownViewResource(R.layout.spin_style)
        jam.adapter = AA

        proses.setOnClickListener {
            val id = id.text
            val nama = nama.text
            val sasal = asal.selectedItem
            val stujuan = tujuan.selectedItem
            val harga = harga.text.toString().toInt()
            val selectedRadio:Int = rgBayar.checkedRadioButtonId
            rbBayar = findViewById(selectedRadio)
            val crBayar = rbBayar.text.toString()
            var ttBagasi:Int = 0
            val result = StringBuilder()
            if(suitcase.isChecked){
                result.append("Suitcase Rp.200.000")
                ttBagasi += 200000
            }
            if (box.isChecked){
                result.append("Box Rp.150.000")
                ttBagasi += 150000
            }
            if (bag.isChecked){
                result.append("Bag Rp.100.000")
                ttBagasi += 100000
            }
            result.append("Total Bagasi Rp. " +ttBagasi)
            val jlh = jumlah.text.toString().toInt()
            val sjam = jam.selectedItem
            val total = (harga * jlh) + ttBagasi

            DataOutput.text = ("Transaksi Tiket : " +
                    "\nId Pelanggan             : $id " +
                    "\nNama Pelanggan           : $nama" +
                    "\nKota Asal                : $sasal" +
                    "\nKota Tujuan              : $stujuan" +
                    "\nHarga Tiket              : $harga" +
                    "\nCara Bayar               : $crBayar" +
                    "\nJumlah Tiket             : $jlh " +
                    "\nJam Keberangkatan         : $sjam " +
                    "\nTambahan Bagasi           : " +result.toString()+ "\n" +
                    "\nTotal Pembayaran           : $total")
        }
    }

    override fun onItemSelected(p0: AdapterView<*>?, p1: View?, p2: Int, p3: Long) {
        val pilihanAsal:String = p0?.getItemAtPosition(p2).toString()
        Toast.makeText(this, "Kota Asal Dipilih : $pilihanAsal", Toast.LENGTH_LONG).show()

        val pilihanTujuan:String = p0?.getItemAtPosition(p2).toString()
        Toast.makeText(this, "Kota Tujuan Dipilih : $pilihanTujuan", Toast.LENGTH_LONG).show()

        val pilihanJam:String = p0?.getItemAtPosition(p2).toString()
        Toast.makeText(this, "Jam Keberangkatan Dipilih : $pilihanJam", Toast.LENGTH_LONG).show()
    }

    override fun onNothingSelected(p0: AdapterView<*>?) {
        TODO("Not yet implemented")
    }
}