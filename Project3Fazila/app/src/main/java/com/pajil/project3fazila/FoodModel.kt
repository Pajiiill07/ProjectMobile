package com.pajil.project3fazila

class FoodModel {
    var foodImages:Int = 0
    var foodNames:String? = null
    var foodPrices:String? = null
    var foodDescs:String? = null
    var foodRates:Int = 0

    fun getFoodName():String{
        return foodNames.toString()
    }

    fun getFoodPrice():String{
        return foodPrices.toString()
    }

    fun getFoodImage():Int{
        return foodImages
    }

    fun getFoodDesc():String{
        return foodDescs.toString()
    }

    fun getFoodRate():Int{
        return foodRates
    }

    fun setFoodName(foodName: String){
        this.foodNames = foodName
    }

    fun setFoodPrice(foodPrice:String){
        this.foodPrices = foodPrice
    }

    fun setFoodImage(foodImage:Int){
        this.foodImages = foodImage
    }

    fun setFoodDesc(foodDesc:String){
        this.foodDescs = foodDesc
    }

    fun setFoodRate(foodRate:Int){
        this.foodRates = foodRate
    }

}