package defpackage;

import android.app.Activity;
import android.content.Context;
import defpackage.ed5;
import defpackage.hd5;

/* loaded from: classes.dex */
public abstract class rc5 {
    public static final rc5 a;

    static {
        rc5 sc5Var;
        try {
            try {
                sc5Var = (rc5) Class.forName("com.google.android.youtube.api.locallylinked.LocallyLinkedFactory").asSubclass(rc5.class).newInstance();
            } catch (IllegalAccessException e) {
                throw new IllegalStateException(e);
            } catch (InstantiationException e2) {
                throw new IllegalStateException(e2);
            }
        } catch (ClassNotFoundException unused) {
            sc5Var = new sc5();
        }
        a = sc5Var;
    }

    public abstract tc5 a(Context context, String str, ed5.a aVar, ed5.b bVar);

    public abstract vc5 b(Activity activity, tc5 tc5Var, boolean z) throws hd5.a;
}
