package com.lala.latihanfazila

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide

class MobilAdapter (private val carAdp : List<Mobil>) : RecyclerView.Adapter<MobilAdapter.CarHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MobilAdapter.CarHolder {
        val item = LayoutInflater.from(parent.context).inflate(R.layout.layout_item, parent, false)
        return CarHolder(item)
    }

    override fun onBindViewHolder(holder: MobilAdapter.CarHolder, position: Int) {
        val mobil =carAdp[position]
        holder.bind(mobil)
    }

    override fun getItemCount(): Int {
        return carAdp.size
    }
    inner class CarHolder(item:View) :RecyclerView.ViewHolder(item){
        var carImg : ImageView = item.findViewById(R.id.imgItem)
        var carName : TextView = item.findViewById(R.id.namaItem)
        var carKode : TextView = item.findViewById(R.id.kodeItem)
        var carPrize : TextView = item.findViewById(R.id.HargaItem)
        var carSeller : TextView = item.findViewById(R.id.penjualItem)
        var carMechine : TextView = item.findViewById(R.id.mesinItem)
        var carBb : TextView = item.findViewById(R.id.bbItem)
        var carKm : TextView = item.findViewById(R.id.KmItem)
        var carTahun : TextView = item.findViewById(R.id.tahunItem)
        var carAddress : TextView = item.findViewById(R.id.alamatItem)

        fun bind (car : Mobil){
            Glide
                .with(itemView.context)
                .load(car.imgCar)
                .into(carImg)
            carName.setText(car.nameCar)
            carKode.setText(car.kodeCar)
            carPrize.setText(car.hargaCar)
            carSeller.setText(car.penjualCar)
            carMechine.setText(car.mesinCar)
            carBb.setText(car.bbCar)
            carKm.setText(car.kmCar)
            carTahun.setText(car.thCar)
            carAddress.setText(car.alamatCar)
        }
    }
}