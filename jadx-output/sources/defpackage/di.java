package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public class di extends ii {
    public static boolean e = true;

    @Override // defpackage.ii
    public void a(View view) {
    }

    @Override // defpackage.ii
    public float b(View view) {
        if (e) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                e = false;
            }
        }
        return view.getAlpha();
    }

    @Override // defpackage.ii
    public void c(View view) {
    }

    @Override // defpackage.ii
    public void e(View view, float f) {
        if (e) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError unused) {
                e = false;
            }
        }
        view.setAlpha(f);
    }
}
