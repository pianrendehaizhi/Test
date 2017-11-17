package com.example.shuai.listviewtest;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.List;

/**
 * Created by Shuai on 2017/8/14.
 */

public class PeopleAdapter extends ArrayAdapter<Fruit> {
    private int resourceId;

    public PeopleAdapter(Context context, int textViewResourceId, List<Fruit> objects) {
        super(context, textViewResourceId, objects);
        resourceId = textViewResourceId;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        Fruit fruit = getItem(position);
        View view;
        ViewHolder viewHolder;
        if (convertView == null) {
            view = LayoutInflater.from(getContext()).inflate(resourceId, parent, false);
            viewHolder = new ViewHolder();
            viewHolder.peopleImage = view.findViewById(R.id.people_image);
            viewHolder.peopleName = view.findViewById(R.id.people_name);
            view.setTag(viewHolder);
        } else {
            view = convertView;
            viewHolder = (ViewHolder) view.getTag();
        }

        viewHolder.peopleImage.setImageResource(fruit.getImageId());
        viewHolder.peopleName.setText(fruit.getName());
        return view;
    }

    class ViewHolder {
        ImageView peopleImage;
        TextView peopleName;
    }
}
