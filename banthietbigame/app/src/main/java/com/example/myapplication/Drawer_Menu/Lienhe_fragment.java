package com.example.myapplication.Drawer_Menu;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import com.example.myapplication.Map.MapsActivity;
import com.example.myapplication.R;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.material.navigation.NavigationView;

import java.util.List;

public class Lienhe_fragment extends Fragment implements NavigationView.OnNavigationItemSelectedListener {

    DrawerLayout drawerLayout;
    NavigationView navigationView;
    Button btnBack;

    EditText editTextName;
    EditText editTextEmail;
    EditText editTextMessage;

    Intent intent;

    Button button_send, btnmap, phone1, phone2, phone3;

    ImageView imgphone1, imgphone2, imgphone3;

    @SuppressLint("MissingInflatedId")
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_lienhe, container, false);
        drawerLayout = view.findViewById(R.id.Drawerlayout);
        btnBack = view.findViewById(R.id.btnBack);
        navigationView = view.findViewById(R.id.NavigationView);
        navigationView.setNavigationItemSelectedListener(this);


        editTextName = view.findViewById(R.id.edit_text_name);
        editTextEmail = view.findViewById(R.id.edit_text_email);
        editTextMessage = view.findViewById(R.id.edit_text_message);

        imgphone1 = view.findViewById(R.id.imgphone1);
        imgphone2 = view.findViewById(R.id.imgphone2);
        imgphone3 = view.findViewById(R.id.imgphone3);
        phone1 = view.findViewById(R.id.phone1);
        phone2 = view.findViewById(R.id.phone2);
        phone3 = view.findViewById(R.id.phone3);

        imgphone1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                intent = new Intent(Intent.ACTION_DIAL);
                intent.setData(Uri.parse("tel:0353022641"));
                startActivity(intent);
            }
        });
        imgphone2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                intent = new Intent(Intent.ACTION_DIAL);
                intent.setData(Uri.parse("tel:0936008597"));
                startActivity(intent);
            }
        });
        imgphone3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                intent = new Intent(Intent.ACTION_DIAL);
                intent.setData(Uri.parse("tel:0792575738"));
                startActivity(intent);
            }
        });

        phone1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                intent = new Intent(Intent.ACTION_DIAL);
                intent.setData(Uri.parse("tel:0353022641"));
                startActivity(intent);
            }
        });
        phone2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                intent = new Intent(Intent.ACTION_DIAL);
                intent.setData(Uri.parse("tel:0936008597"));
                startActivity(intent);
            }
        });
        phone3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                intent = new Intent(Intent.ACTION_DIAL);
                intent.setData(Uri.parse("tel:0792575738"));
                startActivity(intent);
            }
        });

        btnmap = view.findViewById(R.id.btnmap);
        btnmap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getContext(), MapsActivity.class);
                startActivity(intent);
            }
        });

        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                drawerLayout.openDrawer(GravityCompat.START);
            }
        });
        // Initialize send button
        button_send = view.findViewById(R.id.button_send);
        button_send.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Get input values
                String name = editTextName.getText().toString().trim();
                String email = editTextEmail.getText().toString().trim();
                String message = editTextMessage.getText().toString().trim();

                // Validate input values
                if (TextUtils.isEmpty(name)) {
                    editTextName.setError("Please enter your name");
                    editTextName.requestFocus();
                    return;
                }

                if (TextUtils.isEmpty(email)) {
                    editTextEmail.setError("Please enter your email");
                    editTextEmail.requestFocus();
                    return;
                }

                if (!Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
                    editTextEmail.setError("Please enter a valid email");
                    editTextEmail.requestFocus();
                    return;
                }

                if (TextUtils.isEmpty(message)) {
                    editTextMessage.setError("Please enter your message");
                    editTextMessage.requestFocus();
                    return;
                }

                // Send email
                sendEmail(name, email, message);
            }
        });
        return view;

    }

    private void sendEmail(String name, String email, String message) {
        Intent emailIntent = new Intent(Intent.ACTION_SENDTO, Uri.fromParts("mailto", "minhtuan291999@gmail.com", null));
        emailIntent.putExtra(Intent.EXTRA_SUBJECT, "Message from " + name);
        emailIntent.putExtra(Intent.EXTRA_TEXT, message + "\n\n" + "Reply to: " + email);

        try {
            startActivity(Intent.createChooser(emailIntent, "Send email..."));
        } catch (AbstractMethodError ex) {
            Toast.makeText(getContext(), "There is no email client installed.", Toast.LENGTH_SHORT).show();
        }
    }


    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {
        int id = item.getItemId();

        if (id == R.id.itemThongtin) {
            Fragment fragment = new Thongtin_fragment();
            FragmentTransaction transaction = getParentFragmentManager().beginTransaction();
            transaction.replace(R.id.nav_frame_layout, fragment);
            transaction.addToBackStack(null);
            transaction.commit();
        } else if (id == R.id.itemCaidat) {
            Fragment fragment = new Caidat_fragment();
            FragmentTransaction transaction = getParentFragmentManager().beginTransaction();
            transaction.replace(R.id.nav_frame_layout, fragment);
            transaction.addToBackStack(null);
            transaction.commit();
        } else if (id == R.id.itemDieukhoan) {
            Fragment fragment = new Dieukhoan_fragment();
            FragmentTransaction transaction = getParentFragmentManager().beginTransaction();
            transaction.replace(R.id.nav_frame_layout, fragment);
            transaction.addToBackStack(null);
            transaction.commit();
        } else if (id == R.id.itemLienhe) {
            Fragment fragment = new Lienhe_fragment();
            FragmentTransaction transaction = getParentFragmentManager().beginTransaction();
            transaction.replace(R.id.nav_frame_layout, fragment);
            transaction.addToBackStack(null);
            transaction.commit();
        }
        return true;
    }
}
