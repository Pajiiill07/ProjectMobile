package com.pajil.project2fazila

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.EditText
import android.widget.Spinner
import android.widget.Toast

class EmpatActivity : AppCompatActivity(), AdapterView.OnItemSelectedListener {
    val spinProdi = arrayOf<String>("  Rekayasa Perangkat Lunak", "  Manajemen Informatika", "  Teknik Komputer")
    lateinit var nim : EditText
    lateinit var prodi : Spinner
    lateinit var uas : EditText
    lateinit var harian : EditText
    lateinit var go : Button
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_empat)
        nim = findViewById(R.id.editNim)
        uas = findViewById(R.id.editUas)
        harian = findViewById(R.id.editHarian)
        go = findViewById(R.id.btnGo)
        prodi = findViewById(R.id.spinPrd)
        prodi.onItemSelectedListener = this
        val AA:ArrayAdapter<*> = ArrayAdapter<Any>(this@EmpatActivity, R.layout.spin_style, spinProdi)
        AA.setDropDownViewResource(R.layout.spin_style)
        prodi.adapter = AA
        go.setOnClickListener {
            val bundle = Bundle()
            var uas1: Int = uas.text.toString().toInt()
            var harian1: Int = harian.text.toString().toInt()
            var hsl = (0.5 * uas1) + (0.5 * harian1)
            val intent = Intent(this@EmpatActivity, LimaActivity::class.java)
            bundle.putString("nim", nim.text.toString())
            bundle.putString("prodi", prodi.selectedItem.toString())
            bundle.putString("uas", uas1.toString())
            bundle.putString("harian", harian1.toString())
            bundle.putString("nilai akhir", hsl.toString())
            intent.putExtras(bundle)
            startActivity(intent)
        }
    }

    override fun onItemSelected(p0: AdapterView<*>?, p1: View?, p2: Int, p3: Long) {
        //val pilProdi:String = p0?.getItemAtPosition(p2).toString()
        //Toast.makeText(this, "Prodi Dipilih : $pilProdi", Toast.LENGTH_LONG).show()
    }

    override fun onNothingSelected(p0: AdapterView<*>?) {
        TODO("Not yet implemented")
    }
}