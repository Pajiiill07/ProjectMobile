package com.lala.storefazila.adapter

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.lala.storefazila.model.Barang
import com.lala.storefazila.R
import com.lala.storefazila.activity.MainActivity.Companion.setStrikeThrough
import com.squareup.picasso.Picasso

class BarangAdapter(val dataBarang : List<Barang>):RecyclerView.Adapter<BarangAdapter.BarangHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): BarangHolder {
        val itemView = LayoutInflater.from(parent.context).inflate(R.layout.item_barang, parent,false)
        return BarangHolder(itemView)
    }

    override fun onBindViewHolder(holder: BarangHolder, position: Int) {
        Picasso
            .get()
            .load(dataBarang.get(position).gambar)
            .into(holder.BarangImage)

        holder.BarangNama.text = dataBarang.get(position).nama
        holder.BarangKet.text = dataBarang.get(position).keterangan
        holder.BarangHarga.text = "Harga : Rp. ${dataBarang.get(position).harga}"
        holder.BarangPromo.text = "Promo : Rp. ${dataBarang.get(position).promo}"

        setStrikeThrough(holder.BarangHarga)

        if (dataBarang.get(position).promo >= dataBarang.get(position).harga){
            holder.BarangHarga.paintFlags = 0
        }

    }

    override fun getItemCount(): Int {
        return dataBarang.size
    }

    inner class BarangHolder(itemView:View): RecyclerView.ViewHolder(itemView){
        val BarangImage : ImageView = itemView.findViewById(R.id.imgBarang)
        val BarangNama : TextView = itemView.findViewById(R.id.namaBarang)
        val BarangKet : TextView = itemView.findViewById(R.id.ketBarang)
        val BarangHarga : TextView = itemView.findViewById(R.id.hargaBarang)
        val BarangPromo : TextView = itemView.findViewById(R.id.promoBarang)
    }

}