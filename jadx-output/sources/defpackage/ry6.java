package defpackage;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public abstract class ry6 {
    public final DataSetObservable a = new DataSetObservable();
    public DataSetObserver b;

    public abstract void a(ViewGroup viewGroup, int i, Object obj);

    public abstract int b();

    public abstract Object c(ViewGroup viewGroup, int i);

    public abstract boolean d(View view, Object obj);
}
