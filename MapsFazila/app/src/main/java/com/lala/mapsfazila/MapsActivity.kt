package com.lala.mapsfazila

import android.content.ContentValues.TAG
import android.content.res.Resources
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.Menu
import android.view.MenuItem

import com.google.android.gms.maps.CameraUpdateFactory
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.google.android.gms.maps.model.BitmapDescriptorFactory
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.maps.model.MapStyleOptions
import com.google.android.gms.maps.model.Marker
import com.google.android.gms.maps.model.MarkerOptions
import com.lala.mapsfazila.databinding.ActivityMapsBinding
import java.util.Locale

class MapsActivity : AppCompatActivity(), OnMapReadyCallback {

    private lateinit var mMap: GoogleMap
    private lateinit var binding: ActivityMapsBinding
    val ZOOM = 10F


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMapsBinding.inflate(layoutInflater)
        setContentView(binding.root)


        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        val mapFragment = supportFragmentManager
            .findFragmentById(R.id.map) as SupportMapFragment
        mapFragment.getMapAsync(this)
    }

    override fun onCreateOptionsMenu(menu: Menu?): Boolean {
        val inflater = menuInflater
        inflater.inflate(R.menu.map_options,menu)
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem)= when(item.itemId) {
        R.id.normal -> {
            mMap.mapType = GoogleMap.MAP_TYPE_NORMAL
            true
        }
        R.id.satellite -> {
            mMap.mapType = GoogleMap.MAP_TYPE_SATELLITE
            true
        }
        R.id.hybrid -> {
            mMap.mapType = GoogleMap.MAP_TYPE_HYBRID
            true
        }
        R.id.terrain -> {
            mMap.mapType = GoogleMap.MAP_TYPE_TERRAIN
            true
        }
        else -> super.onOptionsItemSelected(item)
    }

    override fun onMapReady(googleMap: GoogleMap) {
        mMap = googleMap

        val basko = LatLng(-0.9020456589850425, 100.35087893821128 )
        var marbas : Marker?=null
        marbas=mMap.addMarker(
            MarkerOptions()
                .title("Basko Grand Mall").position(basko)
                .snippet("Mall terbesar dan terkeren di kota padang")
                .icon(BitmapDescriptorFactory.fromResource(R.drawable.googlemaps))
        )
        marbas?.tag=null

        val tm = LatLng(-0.9124574946198925, 100.35742182471685)
        var martm : Marker?=null
        martm=mMap.addMarker(
            MarkerOptions()
                .title("Transmart Padang").position(tm)
                .snippet("Transmart satu-satunya di Sumatera Barat")
                .icon(BitmapDescriptorFactory.fromResource(R.drawable.maps))
        )
        martm?.tag=null

        val tambud = LatLng(-0.954365642696847, 100.35315716704677 )
        var martambud : Marker?=null
        martambud=mMap.addMarker(
            MarkerOptions()
                .title("Taman Budaya Sumbar").position(tambud)
                .snippet("Taman Budaya Provinsi Sumatera Barat")
                .icon(BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_ORANGE))
        )
        martambud?.tag=null

        val sph = LatLng(-0.941257772649389, 100.39934148162932)
        var marsph : Marker?=null
        marsph=mMap.addMarker(
            MarkerOptions()
                .title("Semen Padang Hospital").position(sph)
                .snippet("Rumah Sakit Swasta Semen Padang")
                .icon(BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_BLUE))
        )
        marsph?.tag=null

        val padang = LatLng(-0.9436587704723911, 100.3671789314642)
        mMap.addMarker(MarkerOptions().position(padang).title("RSUP M.Djamil Padang"))
        mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(padang,ZOOM))
        setMapStyle(googleMap)
        setMapLongClick(map = mMap)
    }

    private fun setMapLongClick(map: GoogleMap){
        map.setOnMapClickListener {latLng ->
            val snippet = String.format(
                Locale.getDefault(),
                "Lat : %1$.5f, Long : %2$.5f",
                latLng.latitude,
                latLng.longitude
            )
            map.addMarker(
                MarkerOptions()
                    .position(latLng)
                    .title("Drop Pin")
                    .snippet(snippet)
                    .icon(BitmapDescriptorFactory.fromResource(R.drawable.pin))
            )
        }
    }

    private fun setMapStyle(googleMap: GoogleMap){
        try {
            val success = googleMap.setMapStyle(MapStyleOptions.loadRawResourceStyle(this, R.raw.map_style))
            if (!success){
                Log.e(TAG,"Gagal Mengganti style google maps baru" )
            }
        }catch (e:Resources.NotFoundException){
            Log.e(TAG, "Tidak menemukan style google maps baru")
        }
    }

}