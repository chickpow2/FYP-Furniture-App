package com.google.ar.sceneform.samples.gltf.fragment;


import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION_CODES;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.bumptech.glide.Glide;
import com.google.ar.core.Anchor;
import com.google.ar.core.HitResult;
import com.google.ar.core.Plane;
import com.google.ar.sceneform.AnchorNode;
import com.google.ar.sceneform.rendering.ModelRenderable;
import com.google.ar.sceneform.rendering.Renderable;
import com.google.ar.sceneform.samples.gltf.Furniture;
import com.google.ar.sceneform.samples.gltf.R;
import com.google.ar.sceneform.samples.gltf.RecyclerItemClickListener;
import com.google.ar.sceneform.samples.gltf.app.MyApplication;
import com.google.ar.sceneform.ux.ArFragment;
import com.google.ar.sceneform.ux.BaseArFragment;
import com.google.ar.sceneform.ux.TransformableNode;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import org.json.JSONArray;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class GltfFragment extends FragmentActivity {
    private static final String TAG = GltfFragment.class.getSimpleName();
    private static final double MIN_OPENGL_VERSION = 3.0;

    private ArFragment arFragment;
    private Renderable renderable;
    String modelLink= ARMenuFragment.selection;
    View arrayView[];
    View testView;
    ImageView sofa1;
    int selected = 1;
    public static String selection ;
    private AlertDialog.Builder dialogBuilder;
    private AlertDialog dialog;
    private ImageButton newconatactpopup_cancel;
    String JSON_DATA;
    String Output_Data = "";
    Thread t;
    TextView output;

    String updateTime;

    private static final String URL = "https://json-66cb8.web.app";

    private RecyclerView recyclerView;
    private List<Furniture> itemsList;
    private StoreAdapter mAdapter;
    public GltfFragment() {

    }



    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        ArrayList<Furniture> panel1 = new ArrayList<>();
//can use getJson
        Furniture a = new Furniture("chair", "1000", "https://github.com/chickpow2/furniture_model/raw/master/scale_chair2.glb");
        Furniture b = new Furniture("sofa", "1000", "https://github.com/chickpow2/furniture_model/raw/master/sofa_05.glb");
        Furniture c = new Furniture("Dining Table and Chair Set", "1000", "https://github.com/chickpow2/furniture_model/raw/master/tablechair_1.glb");
        Furniture d = new Furniture("bookcase", "1000", "https://github.com/chickpow2/furniture_model/raw/master/bookcase1.glb");
        Furniture e = new Furniture("Hi-Fi", "1000", "https://github.com/chickpow2/furniture_model/raw/master/hifi.glb");
        Furniture f = new Furniture("bed set", "1000", "https://github.com/chickpow2/furniture_model/raw/master/bedset1.glb");
        Furniture g = new Furniture("AL sofa", "1000", "https://github.com/chickpow2/furniture_model/raw/master/sofa2_2.glb");
        Furniture h = new Furniture("kitchen", "1000", "https://github.com/chickpow2/furniture_model/raw/master/kitchen.glb");
        panel1.add(a);
        panel1.add(b);
        panel1.add(c);
        panel1.add(d);
        panel1.add(e);
        panel1.add(f);
        panel1.add(g);
        panel1.add(h);


        if (!checkIsSupportedDeviceOrFinish(this)) {
            return;
        }
        // sofa1 = (ImageView) findViewById(R.id.sofa1);
        setContentView(R.layout.activity_ux_2);

        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                createNewContactDialog();
            }
        });

        for(int i = 0;i<panel1.size();i++){
            ImageView newImageView = new ImageView(this);

            Button newButton = new Button(this);
            newButton.setText(panel1.get(i).getName());
            int finalI = i; //(warning suggestion)
            arFragment = (ArFragment) getSupportFragmentManager().findFragmentById(R.id.ux_fragment);
            newButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    selection = ARMenuFragment.selection;  //abcde
                    // Intent intent=new Intent(getApplicationContext(), GltfActivity.class);//change this

                    //startActivity(intent);//change this

                    //furniture_select_activity fur;//??
                    modelLink = selection;//?? make static then ok? no need obj or declare?

                    seturl(); //setUpModel
                    //setOnclickListener();
                    arFragment.setOnTapArPlaneListener(new BaseArFragment.OnTapArPlaneListener() {
                        public void onTapPlane(HitResult hitResult, Plane plane, MotionEvent motionEvent) {
                            Anchor anchor = hitResult.createAnchor();
                            AnchorNode anchorNode = new AnchorNode(anchor);
                            anchorNode.setParent(arFragment.getArSceneView().getScene());
                            createModel(anchorNode); //selected


                        }





                    });
                }

            });
            newButton.setBackgroundColor(0xFF99D6D6);

        }



    }


    public void seturl() {
        WeakReference<GltfFragment> weakActivity = new WeakReference<>(this);

        String[] link = {"https://storage.googleapis.com/ar-answers-in-search-models/static/Tiger/model.glb", "https://github.com/chickpow2/noob-example/raw/master/tablechair_1.glb", "https://github.com/chickpow2/noob-example/raw/master/sofa_04.glb", "https://github.com/chickpow2/noob-example/raw/master/sofa_05.glb", "https://github.com/chickpow2/noob-example/raw/master/scale_chair1.glb"};
        //for test(furniture class to contain link)
        ModelRenderable.builder()
                .setSource(
                        this,
                        Uri.parse(
                                selection))
                .setIsFilamentGltf(true)
                .build()
                .thenAccept(
                        modelRenderable -> {
                            GltfFragment activity = weakActivity.get();
                            if (activity != null) {
                                activity.renderable = modelRenderable;
                            }
                        })
                .exceptionally(
                        throwable -> {
                            Toast toast =
                                    Toast.makeText(this, "Unable to load  renderable", Toast.LENGTH_LONG);
                            toast.setGravity(Gravity.CENTER, 0, 0);
                            toast.show();
                            return null;
                        });


    }




    private void setBackground(int id) {
        for (int i = 0; i < arrayView.length; i++) {
            if (arrayView[i].getId() == id)
                arrayView[i].setBackgroundColor(android.graphics.Color.parseColor("#80333639"));
            else {
                arrayView[i].setBackgroundColor(android.graphics.Color.TRANSPARENT);
            }
        }

    }

    private void createModel(AnchorNode anchorNode) {//selected
        //if(select=1)
        TransformableNode model = new TransformableNode(arFragment.getTransformationSystem());
        model.setParent(anchorNode);
        model.setRenderable(renderable); //change
        model.select();
    }




    public static boolean checkIsSupportedDeviceOrFinish(final Activity activity) {
        if (Build.VERSION.SDK_INT < VERSION_CODES.N) {
            Log.e(TAG, "Sceneform requires Android N or later");
            Toast.makeText(activity, "Sceneform requires Android N or later", Toast.LENGTH_LONG).show();
            activity.finish();
            return false;
        }
        String openGlVersionString =
                ((ActivityManager) activity.getSystemService(Context.ACTIVITY_SERVICE))
                        .getDeviceConfigurationInfo()
                        .getGlEsVersion();
        if (Double.parseDouble(openGlVersionString) < MIN_OPENGL_VERSION) {
            Log.e(TAG, "Sceneform requires OpenGL ES 3.0 later");
            Toast.makeText(activity, "Sceneform requires OpenGL ES 3.0 or later", Toast.LENGTH_LONG)
                    .show();
            activity.finish();
            return false;
        }
        return true;
    }

    public void createNewContactDialog() {
        dialogBuilder = new AlertDialog.Builder(this);
        final View contactPopupView = getLayoutInflater().inflate(R.layout.popup2, null);
        newconatactpopup_cancel=contactPopupView.findViewById(R.id.cancelButton);
        recyclerView = contactPopupView.findViewById(R.id.recycler_view);
        itemsList = new ArrayList<>();
        mAdapter = new StoreAdapter(this, itemsList);
        recyclerView.addOnItemTouchListener(
                new RecyclerItemClickListener(mAdapter.context, recyclerView ,new RecyclerItemClickListener.OnItemClickListener() {

                    @Override public void onItemClick(View view, int position) {
                        Furniture furniture = mAdapter.furnitureList.get(position);
                        selection = furniture.getModel();  //abcde  //abcde
                        // Intent intent=new Intent(getApplicationContext(), GltfActivity.class);//change this

                        //startActivity(intent);//change this

                        //furniture_select_activity fur;//??
                        modelLink = selection;//?? make static then ok? no need obj or declare?

                        seturl(); //setUpModel
                        //setOnclickListener();
                        arFragment.setOnTapArPlaneListener(new BaseArFragment.OnTapArPlaneListener() {
                            public void onTapPlane(HitResult hitResult, Plane plane, MotionEvent motionEvent) {
                                Anchor anchor = hitResult.createAnchor();
                                AnchorNode anchorNode = new AnchorNode(anchor);
                                anchorNode.setParent(arFragment.getArSceneView().getScene());
                                createModel(anchorNode); //selected


                            }});
                        dialog.dismiss();}

                    @Override public void onLongItemClick(View view, int position) {
                        // do whatever
                    }
                })
        );

        RecyclerView.LayoutManager mLayoutManager = new GridLayoutManager(this, 3);
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.addItemDecoration(new GridSpacingItemDecoration(2, dpToPx(8), true));
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(mAdapter);
        recyclerView.setNestedScrollingEnabled(false);

        fetchStoreItems();

        dialogBuilder.setView(contactPopupView);
        dialog = dialogBuilder.create();
        dialog.show();

        newconatactpopup_cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.dismiss();
            }

        });
    }
    private void fetchStoreItems() {
        JsonArrayRequest request = new JsonArrayRequest(URL,
                new Response.Listener<JSONArray>() {
                    @Override
                    public void onResponse(JSONArray response) {
                        if (response == null) {
                            //Toast.makeText(this, "Couldn't fetch the store items! Pleas try again.", Toast.LENGTH_LONG).show();
                            return;
                        }

                        List<Furniture> items = new Gson().fromJson(response.toString(), new TypeToken<List<Furniture>>() {
                        }.getType());

                        itemsList.clear();
                        itemsList.addAll(items);

                        // refreshing recycler view
                        mAdapter.notifyDataSetChanged();
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                // error in getting json
                Log.e(TAG, "Error: " + error.getMessage());
                //Toast.makeText((AppCompatActivity)this, "Error: " + error.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });

        MyApplication.getInstance().addToRequestQueue(request);
    }

    public class GridSpacingItemDecoration extends RecyclerView.ItemDecoration {

        private int spanCount;
        private int spacing;
        private boolean includeEdge;

        public GridSpacingItemDecoration(int spanCount, int spacing, boolean includeEdge) {
            this.spanCount = spanCount;
            this.spacing = spacing;
            this.includeEdge = includeEdge;
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
            int position = parent.getChildAdapterPosition(view); // item position
            int column = position % spanCount; // item column

            if (includeEdge) {
                outRect.left = spacing - column * spacing / spanCount; // spacing - column * ((1f / spanCount) * spacing)
                outRect.right = (column + 1) * spacing / spanCount; // (column + 1) * ((1f / spanCount) * spacing)

                if (position < spanCount) { // top edge
                    outRect.top = spacing;
                }
                outRect.bottom = spacing; // item bottom
            } else {
                outRect.left = column * spacing / spanCount; // column * ((1f / spanCount) * spacing)
                outRect.right = spacing - (column + 1) * spacing / spanCount; // spacing - (column + 1) * ((1f /    spanCount) * spacing)
                if (position >= spanCount) {
                    outRect.top = spacing; // item top
                }
            }
        }
    }


    private int dpToPx(int dp) {
        Resources r = getResources();
        return Math.round(TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, dp, r.getDisplayMetrics()));
    }



    class StoreAdapter extends RecyclerView.Adapter<StoreAdapter.MyViewHolder> {
        private Context context;
        private List<Furniture> furnitureList;

        public class MyViewHolder extends RecyclerView.ViewHolder {
            public TextView name, price;
            public ImageView thumbnail;

            public MyViewHolder(View view) {
                super(view);
                name = view.findViewById(R.id.title);
                price = view.findViewById(R.id.price);
                thumbnail = view.findViewById(R.id.thumbnail);
            }

        }



        public StoreAdapter(Context context, List<Furniture> furnitureList) {
            this.context = context;
            this.furnitureList = furnitureList;
        }

        @Override
        public StoreAdapter.MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            View itemView = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.store_item_row, parent, false);

            return new StoreAdapter.MyViewHolder(itemView);
        }

        @Override
        public void onBindViewHolder(StoreAdapter.MyViewHolder holder, final int position) {
            final Furniture furniture = furnitureList.get(position);
            holder.name.setText(furniture.getName());
            holder.price.setText("$"+furniture.getPrice());

            Glide.with(context)
                    .load(furniture.getImage())
                    .into(holder.thumbnail);
        }

        @Override
        public int getItemCount() {
            return furnitureList.size();
        }
    }
    private String GET(String url) {

        HttpURLConnection connection = null;
        BufferedReader reader = null;

        try {
            URL url_link = new URL(url);
            connection = (HttpURLConnection) url_link.openConnection();
            connection.connect();


            InputStream stream = connection.getInputStream();

            reader = new BufferedReader(new InputStreamReader(stream));

            StringBuffer buffer = new StringBuffer();
            String line = "";

            while ((line = reader.readLine()) != null) {
                buffer.append(line + "\n");
            }

            return buffer.toString();


        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;

    }
}
