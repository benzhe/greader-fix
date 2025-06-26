package defpackage;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public class ei extends di {
    public static boolean f = true;
    public static boolean g = true;

    @Override // defpackage.ii
    public void g(View view, Matrix matrix) {
        if (f) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f = false;
            }
        }
    }

    @Override // defpackage.ii
    public void h(View view, Matrix matrix) {
        if (g) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                g = false;
            }
        }
    }
}
