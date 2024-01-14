package com.pajil.project

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    /*lateinit var matkul : EditText
    lateinit var dosen : EditText
    lateinit var submit : Button
    lateinit var data : TextView
     */
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val matkul = findViewById<EditText>(R.id.editMatkul)
        val dosen = findViewById<EditText>(R.id.editDos)
        val submit = findViewById<Button>(R.id.btnSubmit)
        val data = findViewById<TextView>(R.id.txtOutput)
        submit.setOnClickListener {
            /*data.text = ("Data Perkuliahan \nMata Kuliah : "+matkul.text+"\nDosen Pembimbing : "+dosen.text)
            data.setText ("Data Perkuliahan " +
                    "\nMata Kuliah : "+matkul.text+
                    "\nDosen Pembimbing : "+dosen.text)
             */
            var matkul = matkul.text
            var dosen = dosen.text

            data.text = ("Data Perkuliahan : " +
                    "\nNama Mata Kuliah : "+ matkul +
                    "\nDosen Pengampu : "+dosen)

        }
    }
}