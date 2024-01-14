package com.pajil.project3fazila

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.example.project3fazila.R

class FoodRecAdapter/*(private val item: List<Food>)*/:RecyclerView.Adapter<FoodRecAdapter.FoodHolder>() {
    private var item : List<Food> = ArrayList()
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FoodHolder {
        /* val itemView = LayoutInflater.from(parent.context).inflate(R.layout.food_rec_item, parent, false)
        return FoodHolder(itemView)
         */
        val view:View = LayoutInflater.from(parent.context).inflate(R.layout.food_rec_item, parent, false)
        return FoodHolder(view)
    }

    override fun getItemCount(): Int {
        return item.size
    }

    fun getListFood(foodList: List<Food>){
        item = foodList
    }

    override fun onBindViewHolder(holder: FoodHolder, position: Int) {
        /* val food = item[position]
        holder.bind(food)
         */
        when(holder){ is FoodHolder -> holder.bind(item.get(position))
        }
    }

    inner class FoodHolder(itemView:View):RecyclerView.ViewHolder(itemView){
        var fdName: TextView=itemView.findViewById(R.id.txtBurgerRec)
        var fdPrice: TextView=itemView.findViewById(R.id.txtHburgRec)
        var fdImage: ImageView=itemView.findViewById(R.id.img1Rec)
        var fdDel : TextView=itemView.findViewById(R.id.txtDeliv)
        var fdDis : TextView=itemView.findViewById(R.id.txtDiskon)
        var fdDesc: TextView=itemView.findViewById(R.id.txtKtrgRec)
        var fdRate: TextView=itemView.findViewById(R.id.txtRate)

        fun bind(food: Food){
            Glide
                .with(itemView.context)
                .load(food.foodImagesRec)
                .into(fdImage)
            fdName.setText(food.foodNamesRec)
            fdPrice.setText(food.foodPricesRec)
            fdDesc.setText(food.foodDescsRec)
            fdDel.setText(food.foodDelRec)
            fdDis.setText(food.foodDiscsRec)
            fdRate.setText(food.foodRatesRec)
        }
    }
}