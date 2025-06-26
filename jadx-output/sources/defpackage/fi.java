package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public class fi extends ei {
    public static boolean h = true;

    @Override // defpackage.ii
    public void d(View view, int i, int i2, int i3, int i4) {
        if (h) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                h = false;
            }
        }
    }
}
