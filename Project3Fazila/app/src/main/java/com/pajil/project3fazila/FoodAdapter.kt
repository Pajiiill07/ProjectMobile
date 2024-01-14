package com.pajil.project3fazila

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.ImageView
import android.widget.TextView
import com.example.project3fazila.R

class FoodAdapter(
    private val context:Context,
    private val foodList: ArrayList<FoodModel>):
    BaseAdapter() {
    override fun getViewTypeCount(): Int {
        return count
    }

    override fun getItemViewType(position: Int): Int {
        return position
    }

    override fun getCount(): Int {
        return foodList.size
    }

    override fun getItem(p0: Int): Any {
        return p0
    }

    override fun getItemId(p0: Int): Long {
        return 0
    }

    override fun getView(p0: Int, p1: View?, p2: ViewGroup?): View {
        var convertView = p1
        var holder: ViewHolder
        if (convertView == null){
            holder = ViewHolder()
            val layoutInflater = context.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
            convertView = layoutInflater.inflate(R.layout.food_item, null, true)
            holder.foodName = convertView.findViewById(R.id.txtBurger) as TextView
            holder.foodImage = convertView.findViewById(R.id.img1) as ImageView
            holder.foodPrice = convertView.findViewById(R.id.txtHburg) as TextView
            holder.foodDesc = convertView.findViewById(R.id.txtKtrg) as TextView
            holder.foodRate = convertView.findViewById(R.id.imgRate) as ImageView
            convertView.tag = holder
        }else{
            holder = convertView.tag as ViewHolder
        }
        holder.foodName!!.setText(foodList[p0].getFoodName())
        holder.foodImage!!.setImageResource(foodList[p0].getFoodImage())
        holder.foodPrice!!.setText(foodList[p0].getFoodPrice())
        holder.foodDesc!!.setText(foodList[p0].getFoodDesc())
        holder.foodRate!!.setImageResource(foodList[p0].getFoodRate())
        return convertView!!
    }

    private inner class ViewHolder{
        var foodName:TextView?=null
        var foodPrice:TextView?=null
        var foodImage:ImageView?=null
        var foodDesc:TextView?=null
        var foodRate:ImageView?=null
    }
}