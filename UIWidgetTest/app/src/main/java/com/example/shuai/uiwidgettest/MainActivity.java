package com.example.shuai.uiwidgettest;

import android.content.DialogInterface;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private static final String TAG = "MainActivity";
    private EditText editText;
    private ImageView imageView;
    private ProgressBar progressBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button button = (Button) findViewById(R.id.button);
        /*
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

            }
        });
        */
        button.setOnClickListener(this);

        editText = (EditText) findViewById(R.id.edit_text);
        imageView = (ImageView) findViewById(R.id.imageView_1);
        progressBar = (ProgressBar) findViewById(R.id.progressBar);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.button:
//                String string = editText.getText().toString();
//                Toast.makeText(MainActivity.this, string, Toast.LENGTH_SHORT).show();
//                imageView.setImageResource(R.drawable.img2);

//                progressBar.setVisibility(progressBar.getVisibility() == View.GONE ? View.VISIBLE : View.GONE);

//                int progress = progressBar.getProgress();
//                progress += 10;
//                progressBar.setProgress(progress);

                AlertDialog.Builder dialog = new AlertDialog.Builder(MainActivity.this);
                dialog.setTitle("This is dialog");
                dialog.setMessage("something");
                dialog.setCancelable(false);
                dialog.setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Toast.makeText(MainActivity.this, "OK", Toast.LENGTH_SHORT).show();
                        showAlert();
                    }
                });
                dialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Toast.makeText(MainActivity.this, "Cancel", Toast.LENGTH_LONG).show();
                    }
                });
                dialog.show();
                break;
            default:
                break;
        }
    }

    private void showAlert() {

    }
}
