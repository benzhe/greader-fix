package defpackage;

import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.cocosw.bottomsheet.R$id;

/* loaded from: classes.dex */
public class oo extends BaseAdapter {
    public final /* synthetic */ ro e;

    public class a {
        public TextView a;
        public ImageView b;
        public ImageView c;

        public a(oo ooVar) {
        }
    }

    public oo(ro roVar) {
        this.e = roVar;
    }

    public MenuItem a(int i) {
        return this.e.w.c.get(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.e.w.size() - this.e.e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.e.w.c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            LayoutInflater layoutInflater = (LayoutInflater) this.e.getContext().getSystemService("layout_inflater");
            ro roVar = this.e;
            view = roVar.p.e ? layoutInflater.inflate(roVar.l, viewGroup, false) : layoutInflater.inflate(roVar.k, viewGroup, false);
            aVar = new a(this);
            aVar.a = (TextView) view.findViewById(R$id.bs_list_title);
            aVar.b = (ImageView) view.findViewById(R$id.bs_list_image);
            aVar.c = (ImageView) view.findViewById(R$id.bs_list_check);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        for (int i2 = 0; i2 < this.e.e.size(); i2++) {
            if (this.e.e.valueAt(i2) <= i) {
                i++;
            }
        }
        MenuItem menuItemA = a(i);
        aVar.a.setText(menuItemA.getTitle());
        if (menuItemA.getIcon() == null) {
            aVar.b.setVisibility(this.e.m ? 8 : 4);
        } else {
            aVar.b.setVisibility(0);
            aVar.b.setImageDrawable(menuItemA.getIcon());
        }
        aVar.b.setEnabled(menuItemA.isEnabled());
        aVar.a.setEnabled(menuItemA.isEnabled());
        ImageView imageView = aVar.c;
        if (imageView != null) {
            imageView.setVisibility(menuItemA.isChecked() ? 0 : 8);
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this.e.w.c.get(i).isEnabled();
    }
}
