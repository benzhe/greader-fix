package defpackage;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* loaded from: classes.dex */
public final class ga {
    public Object a;

    public ga(Object obj) {
        this.a = obj;
    }

    public static ga a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? new ga(PointerIcon.getSystemIcon(context, i)) : new ga(null);
    }
}
