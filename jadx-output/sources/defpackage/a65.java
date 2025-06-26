package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public class a65 {
    public final View a;
    public int b;
    public int c;
    public int d;
    public int e;

    public a65(View view) {
        this.a = view;
    }

    public void a() {
        View view = this.a;
        ha.m(view, this.d - (view.getTop() - this.b));
        View view2 = this.a;
        ha.l(view2, this.e - (view2.getLeft() - this.c));
    }

    public boolean b(int i) {
        if (this.d == i) {
            return false;
        }
        this.d = i;
        a();
        return true;
    }
}
