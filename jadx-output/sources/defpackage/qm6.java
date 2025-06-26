package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.List;

/* loaded from: classes.dex */
public abstract class qm6<T> extends BaseAdapter {
    public Context e;
    public List<T> f;

    public qm6(Context context, List<T> list) {
        this.e = context;
        this.f = list;
    }

    public abstract View a(int i, View view, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        List<T> list = this.f;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i) {
        List<T> list = this.f;
        if (list == null || list.size() == 0 || i < 0 || i > getCount() - 1) {
            return null;
        }
        return this.f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return a(i, view, viewGroup);
    }
}
