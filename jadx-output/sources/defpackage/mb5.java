package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes.dex */
public class mb5 extends nb5 {
    public static float c(float f) {
        return (float) (1.0d - Math.cos((f * 3.141592653589793d) / 2.0d));
    }

    @Override // defpackage.nb5
    public void b(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float fSin;
        float fC;
        RectF rectFA = nb5.a(tabLayout, view);
        RectF rectFA2 = nb5.a(tabLayout, view2);
        if (rectFA.left < rectFA2.left) {
            fSin = c(f);
            fC = (float) Math.sin((f * 3.141592653589793d) / 2.0d);
        } else {
            fSin = (float) Math.sin((f * 3.141592653589793d) / 2.0d);
            fC = c(f);
        }
        drawable.setBounds(i55.b((int) rectFA.left, (int) rectFA2.left, fSin), drawable.getBounds().top, i55.b((int) rectFA.right, (int) rectFA2.right, fC), drawable.getBounds().bottom);
    }
}
