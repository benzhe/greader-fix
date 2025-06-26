package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import defpackage.ad;
import defpackage.bd;
import defpackage.dd;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class ImmLeaksCleaner implements bd {
    public static int f;
    public static Field g;
    public static Field h;
    public static Field i;
    public Activity e;

    public ImmLeaksCleaner(Activity activity) {
        this.e = activity;
    }

    @Override // defpackage.bd
    public void c(dd ddVar, ad.a aVar) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (aVar != ad.a.ON_DESTROY) {
            return;
        }
        if (f == 0) {
            try {
                f = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                h = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                i = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                g = declaredField3;
                declaredField3.setAccessible(true);
                f = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.e.getSystemService("input_method");
            try {
                Object obj = g.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) h.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                i.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused2) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused3) {
                    } catch (IllegalAccessException unused4) {
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}
