package com.google.ar.sceneform.samples.gltf;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AbsoluteLayout;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import java.util.ArrayList;

public class furniture_select_activity extends AppCompatActivity {
    public static String selection ;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_furniture_select);
        ArrayList<Furniture> panel1 = new ArrayList<>();
//can use getJson
        Furniture a = new Furniture("chair", 520, "https://github.com/chickpow2/furniture_model/raw/master/scale_chair1.glb");
        Furniture b = new Furniture("sofa", 1000, "https://github.com/chickpow2/furniture_model/raw/master/sofa_05.glb");
        Furniture c = new Furniture("Dining Table and Chair Set", 1000, "https://github.com/chickpow2/furniture_model/raw/master/tablechair_1.glb");
        Furniture d = new Furniture("bookcase", 1000, "https://github.com/chickpow2/furniture_model/raw/master/bookcase1.glb");
        Furniture e = new Furniture("Hi-Fi", 1000, "https://github.com/chickpow2/furniture_model/raw/master/hifi.glb");
        Furniture f = new Furniture("bed set", 1000, "https://github.com/chickpow2/furniture_model/raw/master/bedset1.glb");
        Furniture g = new Furniture("AL sofa", 1000, "https://github.com/chickpow2/furniture_model/raw/master/sofa2_2.glb");
        Furniture h = new Furniture("kitchen", 1000, "https://github.com/chickpow2/furniture_model/raw/master/kitchen.glb");




        panel1.add(a);
        panel1.add(b);
        panel1.add(c);
        panel1.add(d);
        panel1.add(e);
        panel1.add(f);
        panel1.add(g);
        panel1.add(h);
        LinearLayout l = (LinearLayout) findViewById(R.id.linearLayout);

        for(int i = 0;i<panel1.size();i++){
            Button newButton = new Button(this);
            newButton.setText(panel1.get(i).getName());
            int finalI = i; //(warning suggestion)
            newButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    selection = panel1.get(finalI).getModel();  //abcde
                    Intent intent=new Intent(getApplicationContext(), GltfActivity.class);

                    startActivity(intent);
                }

            });
            newButton.setBackgroundColor(0xFF99D6D6);
            l.addView(newButton);
        }






    }





}

