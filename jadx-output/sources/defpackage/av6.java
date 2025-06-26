package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.TextView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.common.subscription.BundleItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class av6 extends ArrayAdapter<BundleItem> {
    public Context e;
    public List<BundleItem> f;
    public List<BundleItem> g;
    public Filter h;

    public class b extends Filter {
        public b(a aVar) {
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            String lowerCase = charSequence.toString().toLowerCase();
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (lowerCase.toString().length() > 0) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                synchronized (this) {
                    arrayList2.addAll(av6.this.f);
                }
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    BundleItem bundleItem = (BundleItem) it.next();
                    if (bundleItem.title.toLowerCase().contains(lowerCase.toString())) {
                        arrayList.add(bundleItem);
                    }
                }
                filterResults.count = arrayList.size();
                filterResults.values = arrayList;
            } else {
                synchronized (this) {
                    List<BundleItem> list = av6.this.f;
                    filterResults.values = list;
                    filterResults.count = list.size();
                }
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            av6 av6Var = av6.this;
            av6Var.g = (List) filterResults.values;
            av6Var.notifyDataSetChanged();
            av6.this.clear();
            Iterator<BundleItem> it = av6.this.g.iterator();
            while (it.hasNext()) {
                av6.this.add(it.next());
            }
            av6.this.notifyDataSetInvalidated();
        }
    }

    public av6(Context context, int i, List<BundleItem> list) {
        super(context, i, list);
        this.e = context;
        this.f = new ArrayList(list);
        this.g = list;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Filterable
    public Filter getFilter() {
        if (this.h == null) {
            this.h = new b(null);
        }
        return this.h;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = ((LayoutInflater) this.e.getSystemService("layout_inflater")).inflate(R.layout.subscribe_browse_row, (ViewGroup) null);
        }
        try {
            BundleItem bundleItem = this.g.get(i);
            if (bundleItem != null) {
                ((TextView) view.findViewById(R.id.name)).setText(bundleItem.title);
                view.setTag(bundleItem);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return view;
    }
}
