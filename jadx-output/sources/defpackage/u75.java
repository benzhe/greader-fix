package defpackage;

import android.content.Context;
import android.graphics.Color;
import com.google.android.material.R$attr;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class u75 {
    public final boolean a;
    public final int b;
    public final int c;
    public final float d;

    public u75(Context context) {
        this.a = c50.F0(context, R$attr.elevationOverlayEnabled, false);
        this.b = c50.Y(context, R$attr.elevationOverlayColor, 0);
        this.c = c50.Y(context, R$attr.colorSurface, 0);
        this.d = context.getResources().getDisplayMetrics().density;
    }

    public int a(int i, float f) {
        if (!this.a) {
            return i;
        }
        if (!(d8.h(i, Base64.BASELENGTH) == this.c)) {
            return i;
        }
        float fMin = 0.0f;
        if (this.d > 0.0f && f > 0.0f) {
            fMin = Math.min(((((float) Math.log1p(f / r1)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        }
        return d8.h(c50.p0(d8.h(i, Base64.BASELENGTH), this.b, fMin), Color.alpha(i));
    }
}
