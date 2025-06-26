package defpackage;

import defpackage.bq;
import java.lang.ref.SoftReference;

/* loaded from: classes.dex */
public class xp {
    public static final bq a;
    public static final ThreadLocal<SoftReference<wp>> b;

    static {
        boolean zEquals;
        try {
            zEquals = "true".equals(System.getProperty("com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers"));
        } catch (SecurityException unused) {
            zEquals = false;
        }
        a = zEquals ? bq.a.a : null;
        b = new ThreadLocal<>();
    }
}
