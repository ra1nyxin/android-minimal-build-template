package com.example.minapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.TextView
import android.view.Gravity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        val textView = TextView(this).apply {
            text = "System Initialized\nEntity: x\nStatus: Secure"
            textSize = 24f
            gravity = Gravity.CENTER
        }
        setContentView(textView)
    }
}