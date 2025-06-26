package defpackage;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public class hi extends gi {
    @Override // defpackage.di, defpackage.ii
    public float b(View view) {
        return view.getTransitionAlpha();
    }

    @Override // defpackage.fi, defpackage.ii
    public void d(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // defpackage.di, defpackage.ii
    public void e(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // defpackage.gi, defpackage.ii
    public void f(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // defpackage.ei, defpackage.ii
    public void g(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // defpackage.ei, defpackage.ii
    public void h(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
