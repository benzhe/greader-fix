package defpackage;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class gi extends fi {
    public static boolean i = true;

    @Override // defpackage.ii
    public void f(View view, int i2) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT == 28) {
            super.f(view, i2);
        } else if (i) {
            try {
                view.setTransitionVisibility(i2);
            } catch (NoSuchMethodError unused) {
                i = false;
            }
        }
    }
}
