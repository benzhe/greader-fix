package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class eb extends cb {
    public int m;
    public int n;
    public LayoutInflater o;

    @Deprecated
    public eb(Context context, int i, Cursor cursor, boolean z) {
        super(context, null, z);
        this.n = i;
        this.m = i;
        this.o = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // defpackage.cb
    public View d(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.o.inflate(this.m, viewGroup, false);
    }
}
