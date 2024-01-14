package com.lala.storefazila.activity

import android.content.Intent
import android.graphics.Paint
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.android.volley.Request
import com.android.volley.toolbox.JsonArrayRequest
import com.android.volley.toolbox.Volley
import com.lala.storefazila.model.Barang
import com.lala.storefazila.adapter.BarangAdapter
import com.lala.storefazila.R

class MainActivity : AppCompatActivity() {
    lateinit var progBar : ProgressBar
    lateinit var swipe : SwipeRefreshLayout
    lateinit var flay : FloatingActionButton
    lateinit var recBrg : RecyclerView
    lateinit var barangList: ArrayList<Barang>
    lateinit var barangAdapter: BarangAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        getDataBarang()
        initView()
        barangList = ArrayList()
        barangAdapter = BarangAdapter(barangList)
        val recyclerView = findViewById<RecyclerView>(R.id.recBarang)
        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = barangAdapter
        flay.setOnClickListener {
            val intent = Intent (this@MainActivity, AddDataBarang::class.java)
            startActivity(intent)
        }
        swipe.setOnRefreshListener {
            getDataBarang()
            swipe.isRefreshing = false
        }
    }

    private fun initView() {
        progBar = findViewById(R.id.progressBar)
        swipe = findViewById(R.id.swipeLayout)
        flay = findViewById(R.id.floatingLay)
        recBrg = findViewById(R.id.recBarang)
    }

    private fun getDataBarang() {
        var url = "https://fazilasuryaazzahrah.000webhostapp.com/getdatabarang.php"
        val queue = Volley.newRequestQueue(this@MainActivity)
        val request = JsonArrayRequest(
            Request.Method.GET, url, null,
            { response ->
                progBar.visibility = View.GONE
                try {
                    for (i in 0 until response.length()) {
                        val resObj = response.getJSONObject(i)
                        val namaBrg = resObj.getString("nama")
                        val ketBrg = resObj.getString("keterangan")
                        val hargaBrg = resObj.getString("harga")
                        val imgBrg = resObj.getString("gambar")
                        val promoBrg = resObj.getString("promo")

                        barangList.add(
                            Barang(namaBrg, ketBrg, hargaBrg, imgBrg, promoBrg)
                        )
                        barangAdapter.notifyDataSetChanged()
                    }
                } catch (e: Exception) {
                    e.printStackTrace()
                }
            },
            { error ->
                Toast.makeText(
                    this@MainActivity,
                    "Gagal mendapatkan data barang",
                    Toast.LENGTH_LONG
                ).show()
                error.printStackTrace()
            }
        )
        queue.add(request)
    }

        companion object{
        fun setStrikeThrough(textView: TextView){
            textView.paintFlags = textView.paintFlags or Paint.STRIKE_THRU_TEXT_FLAG
        }
    }
}