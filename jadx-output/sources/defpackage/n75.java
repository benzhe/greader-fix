package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class n75 extends LinearLayoutManager {

    public class a extends sf {
        public a(n75 n75Var, Context context) {
            super(context);
        }

        @Override // defpackage.sf
        public float f(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    public n75(Context context, int i, boolean z) {
        super(i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void X0(RecyclerView recyclerView, RecyclerView.x xVar, int i) {
        a aVar = new a(this, recyclerView.getContext());
        aVar.a = i;
        Y0(aVar);
    }
}
