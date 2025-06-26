package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
public class z55<V extends View> extends CoordinatorLayout.c<V> {
    public a65 a;
    public int b;

    public z55() {
        this.b = 0;
    }

    public int B() {
        a65 a65Var = this.a;
        if (a65Var != null) {
            return a65Var.d;
        }
        return 0;
    }

    public void C(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.w(v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, V v, int i) {
        C(coordinatorLayout, v, i);
        if (this.a == null) {
            this.a = new a65(v);
        }
        a65 a65Var = this.a;
        a65Var.b = a65Var.a.getTop();
        a65Var.c = a65Var.a.getLeft();
        this.a.a();
        int i2 = this.b;
        if (i2 == 0) {
            return true;
        }
        this.a.b(i2);
        this.b = 0;
        return true;
    }

    public z55(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
    }
}
