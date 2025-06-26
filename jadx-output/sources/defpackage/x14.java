package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import defpackage.yx;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class x14 implements yx.b {
    public static final Charset b = Charset.forName("UTF-8");
    public static final iw3 c;
    public static final iw3 d;
    public static final ConcurrentHashMap<String, yv3<k14>> e;
    public static final HashMap<String, yv3<String>> f;
    public static Boolean g;
    public static Long h;
    public static final yv3<Boolean> i;
    public final Context a;

    static {
        iw3 iw3Var = new iw3(null, d35.a("com.google.android.gms.clearcut.public"), "gms:playlog:service:samplingrules_", "LogSamplingRules__", false, false);
        c = iw3Var;
        d = new iw3(null, d35.a("com.google.android.gms.clearcut.public"), "gms:playlog:service:sampling_", "LogSampling__", false, false);
        e = new ConcurrentHashMap<>();
        f = new HashMap<>();
        g = null;
        h = null;
        Object obj = yv3.g;
        i = new dw3(iw3Var, "enable_log_sampling_rules", Boolean.FALSE);
    }

    public x14(Context context) {
        Context applicationContext;
        this.a = context;
        if (context == null || yv3.h != null) {
            return;
        }
        synchronized (yv3.g) {
            if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                context = applicationContext;
            }
            if (yv3.h != context) {
                yv3.i = null;
            }
            yv3.h = context;
        }
    }

    public static long a(String str, long j) {
        if (str == null || str.isEmpty()) {
            return c50.k1(ByteBuffer.allocate(8).putLong(j).array());
        }
        byte[] bytes = str.getBytes(b);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 8);
        byteBufferAllocate.put(bytes);
        byteBufferAllocate.putLong(j);
        return c50.k1(byteBufferAllocate.array());
    }

    public static boolean b(long j, long j2, long j3) {
        if (j2 < 0 || j3 <= 0) {
            return true;
        }
        if (j < 0) {
            j = ((j & Long.MAX_VALUE) % j3) + (Long.MAX_VALUE % j3) + 1;
        }
        return j % j3 < j2;
    }

    public static boolean c(Context context) {
        if (g == null) {
            g = Boolean.valueOf(i20.a(context).a.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return g.booleanValue();
    }

    public static long d(Context context) throws NumberFormatException {
        Object obj;
        if (h == null) {
            long jLongValue = 0;
            if (context == null) {
                return 0L;
            }
            if (c(context)) {
                ContentResolver contentResolver = context.getContentResolver();
                Uri uri = a24.a;
                synchronized (a24.class) {
                    a24.c(contentResolver);
                    obj = a24.k;
                }
                Long lValueOf = (Long) a24.a(a24.i, "android_id", 0L);
                if (lValueOf != null) {
                    jLongValue = lValueOf.longValue();
                } else {
                    String strB = a24.b(contentResolver, "android_id");
                    if (strB != null) {
                        try {
                            long j = Long.parseLong(strB);
                            lValueOf = Long.valueOf(j);
                            jLongValue = j;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    a24.e(obj, a24.i, "android_id", lValueOf);
                }
            }
            h = Long.valueOf(jLongValue);
        }
        return h.longValue();
    }
}
