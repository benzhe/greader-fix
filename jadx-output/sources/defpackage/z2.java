package defpackage;

import android.content.Context;
import android.content.ContextWrapper;

/* loaded from: classes.dex */
public class z2 extends ContextWrapper {
    public static final Object a = new Object();

    public static Context a(Context context) {
        if (!(context instanceof z2) && !(context.getResources() instanceof b3)) {
            context.getResources();
            int i = h3.a;
        }
        return context;
    }
}
