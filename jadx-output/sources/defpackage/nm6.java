package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import com.miguelcatalan.materialsearchview.R$id;
import com.miguelcatalan.materialsearchview.R$layout;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class nm6 extends BaseAdapter implements Filterable {
    public ArrayList<String> e = new ArrayList<>();
    public String[] f;
    public Drawable g;
    public LayoutInflater h;
    public boolean i;

    public class a extends Filter {
        public a() {
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (!TextUtils.isEmpty(charSequence)) {
                ArrayList arrayList = new ArrayList();
                for (String str : nm6.this.f) {
                    if (str.toLowerCase().startsWith(charSequence.toString().toLowerCase())) {
                        arrayList.add(str);
                    }
                }
                filterResults.values = arrayList;
                filterResults.count = arrayList.size();
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            Object obj = filterResults.values;
            if (obj != null) {
                nm6 nm6Var = nm6.this;
                nm6Var.e = (ArrayList) obj;
                nm6Var.notifyDataSetChanged();
            }
        }
    }

    public class b {
        public TextView a;
        public ImageView b;

        public b(nm6 nm6Var, View view) {
            this.a = (TextView) view.findViewById(R$id.suggestion_text);
            if (nm6Var.g != null) {
                ImageView imageView = (ImageView) view.findViewById(R$id.suggestion_icon);
                this.b = imageView;
                imageView.setImageDrawable(nm6Var.g);
            }
        }
    }

    public nm6(Context context, String[] strArr, Drawable drawable, boolean z) {
        this.h = LayoutInflater.from(context);
        this.f = strArr;
        this.g = drawable;
        this.i = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.e.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new a();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = this.h.inflate(R$layout.suggest_item, viewGroup, false);
            bVar = new b(this, view);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.a.setText(this.e.get(i));
        if (this.i) {
            bVar.a.setSingleLine();
            bVar.a.setEllipsize(TextUtils.TruncateAt.END);
        }
        return view;
    }
}
