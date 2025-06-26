package defpackage;

import android.database.DataSetObservable;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class xi {
    public final DataSetObservable a = new DataSetObservable();

    public void a(ViewGroup viewGroup, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void b(ViewGroup viewGroup) {
    }

    public abstract int c();

    public CharSequence d(int i) {
        return null;
    }

    public Object e(ViewGroup viewGroup, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public abstract boolean f(View view, Object obj);

    public void g(Parcelable parcelable, ClassLoader classLoader) {
    }

    public Parcelable h() {
        return null;
    }

    public void i(ViewGroup viewGroup, int i, Object obj) {
    }

    public void j(ViewGroup viewGroup) {
    }
}
