package com.lala.storefazila.activity

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.lala.storefazila.R

class AddDataBarang : AppCompatActivity() {
    lateinit var editnama : EditText
    lateinit var editketerangan : EditText
    lateinit var editharga : EditText
    lateinit var editgambar : EditText
    lateinit var editpromo : EditText
    lateinit var btnAdd : Button
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_add_data_barang)
        initViewAdd()

        btnAdd.setOnClickListener {
            sendDataBrg()
        }
    }

    private fun sendDataBrg() {
        val nbrg = editnama.text.toString()
        val ketb = editketerangan.text.toString()
        val hrgb = editharga.text.toString()
        val imgb = editgambar.text.toString()
        val prob = editpromo.text.toString()

        addDataBarang(nbrg, ketb, hrgb, imgb, prob)
    }

    private fun addDataBarang(brg:String, ket:String, hrg:String, gmbr:String, pro:String) {
        var urladd = "https://fazilasuryaazzahrah.000webhostapp.com/adddatabarang.php"
        val queueadd = Volley.newRequestQueue(this@AddDataBarang)
        val stringRequest = object:StringRequest(Request.Method.POST, urladd,
            Response.Listener {
                    response -> Toast.makeText(this, "Data barang berhasil ditambahkan", Toast.LENGTH_LONG).show()
                    startActivity(Intent(this@AddDataBarang,MainActivity::class.java))
        },
            Response.ErrorListener {
            Toast.makeText(
                this@AddDataBarang,
                "Data barang gagal ditambahkan ",
                Toast.LENGTH_LONG
            ).show()

        }
        ){
            override fun getParams(): HashMap<String, String>? {
                val map = HashMap<String, String>()
                map["nama"]=brg
                map["keterangan"]=ket
                map["harga"]=hrg
                map["gambar"]=gmbr
                map["promo"]=pro
                return map
            }
        }
        queueadd.add(stringRequest)
    }

    private fun initViewAdd() {
        editnama = findViewById(R.id.inNama)
        editketerangan = findViewById(R.id.inKet)
        editharga = findViewById(R.id.inHarga)
        editgambar = findViewById(R.id.inGambar)
        editpromo = findViewById(R.id.inPromo)
        btnAdd = findViewById(R.id.btnInsert)
    }
}