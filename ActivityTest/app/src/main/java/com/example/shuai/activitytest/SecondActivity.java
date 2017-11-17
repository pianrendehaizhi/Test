package com.example.shuai.activitytest;

import android.content.Context;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

public class SecondActivity extends BaseActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.second_layout);

//        Intent intent = getIntent();
//        String data = intent.getStringExtra("extra_data");
//        Log.d("SecondActivity", data);

        Button button2 = (Button) findViewById(R.id.button_2);
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                returnMsg();
                finish();
            }
        });
    }

    public static void actionStart(Context context, String data1, String data2) {
        Intent intent = new Intent(context, SecondActivity.class);
        intent.putExtra("param_1", data1);
        intent.putExtra("param_2", data2);
        context.startActivity(intent);
    }

    private void returnMsg() {
        Intent intent = getIntent();
        intent.putExtra("data_return", "back firstActivity");
        setResult(RESULT_OK, intent);
    }

    @Override
    public void onBackPressed() {
        returnMsg();
        finish();
    }

}
