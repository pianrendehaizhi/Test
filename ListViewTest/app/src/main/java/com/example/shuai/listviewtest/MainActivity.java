package com.example.shuai.listviewtest;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

//    private String[] data = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u"};
    private List<Fruit> peoplesList = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initPeoples();
        ArrayAdapter adapter = new PeopleAdapter(MainActivity.this, R.layout.people_item, peoplesList);
        ListView listView = (ListView) findViewById(R.id.list_view);
        listView.setAdapter(adapter);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Fruit people = peoplesList.get(i);
                Toast.makeText(MainActivity.this, "点击了： " + people.getName(), Toast.LENGTH_LONG).show();
            }
        });
    }

    private void initPeoples() {
        for (int i = 1; i < 100; i++) {
            Fruit people = new Fruit("第" + i + "个", R.drawable.image_1);
            peoplesList.add(people);
        }
    }
}
