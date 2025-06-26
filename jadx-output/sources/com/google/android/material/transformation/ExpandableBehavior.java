package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.ha;
import defpackage.v75;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@Deprecated
/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.c<View> {
    public int a;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public final /* synthetic */ View e;
        public final /* synthetic */ int f;
        public final /* synthetic */ v75 g;

        public a(View view, int i, v75 v75Var) {
            this.e = view;
            this.f = i;
            this.g = v75Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.e.getViewTreeObserver().removeOnPreDrawListener(this);
            ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
            if (expandableBehavior.a == this.f) {
                v75 v75Var = this.g;
                expandableBehavior.C((View) v75Var, this.e, v75Var.a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.a = 0;
    }

    public final boolean B(boolean z) {
        if (!z) {
            return this.a == 1;
        }
        int i = this.a;
        return i == 0 || i == 2;
    }

    public abstract boolean C(View view, View view2, boolean z, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean g(CoordinatorLayout coordinatorLayout, View view, View view2) {
        v75 v75Var = (v75) view2;
        if (!B(v75Var.a())) {
            return false;
        }
        this.a = v75Var.a() ? 1 : 2;
        return C((View) v75Var, view, v75Var.a(), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, View view, int i) {
        v75 v75Var;
        AtomicInteger atomicInteger = ha.a;
        if (!view.isLaidOut()) {
            List<View> listO = coordinatorLayout.o(view);
            int size = listO.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    v75Var = null;
                    break;
                }
                View view2 = listO.get(i2);
                if (d(coordinatorLayout, view, view2)) {
                    v75Var = (v75) view2;
                    break;
                }
                i2++;
            }
            if (v75Var != null && B(v75Var.a())) {
                int i3 = v75Var.a() ? 1 : 2;
                this.a = i3;
                view.getViewTreeObserver().addOnPreDrawListener(new a(view, i3, v75Var));
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
    }
}
