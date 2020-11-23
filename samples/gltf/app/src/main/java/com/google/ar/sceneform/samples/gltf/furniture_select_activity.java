package com.google.ar.sceneform.samples.gltf;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

public class furniture_select_activity extends AppCompatActivity {
    public static String selection ;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_furniture_select);
        Furniture a = new Furniture("chair", 520, "https://github.com/chickpow2/furniture_model/raw/master/scale_chair1.glb");
        Furniture b = new Furniture("sofa", 1000, "https://github.com/chickpow2/furniture_model/raw/master/sofa_05.glb");
        Furniture c = new Furniture("Dining Table and Chair Set", 1000, "https://github.com/chickpow2/furniture_model/raw/master/tablechair_1.glb");


        Button button2= (Button)findViewById(R.id.button2);
        Button button3= (Button)findViewById(R.id.button3);
        Button button4= (Button)findViewById(R.id.button4);
        button2.setText(a.getName());
        button3.setText(b.getName());
        button4.setText(c.getName());
        //////////////////////////////////////////

        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
 selection = a.getModel();
                Intent intent=new Intent(getApplicationContext(),GltfActivity.class);

                startActivity(intent);
            }

        });

//how to make more button without in layout

    }




//move value to the 3d page
}

class Furniture {
    private String name;
    private int price;
    private String model;

    public Furniture(String name, int price, String model) {
        this.name = name;
        this.price = price;
        this.model = model;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }

    public String getModel() {
        return model;
    }
}