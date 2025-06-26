package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import defpackage.j9;
import defpackage.k9;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class g8 {
    public static final n8 a;
    public static final k4<String, Typeface> b;

    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto Le
            l8 r0 = new l8
            r0.<init>()
            defpackage.g8.a = r0
            goto L4b
        Le:
            r1 = 28
            if (r0 < r1) goto L1a
            k8 r0 = new k8
            r0.<init>()
            defpackage.g8.a = r0
            goto L4b
        L1a:
            r1 = 26
            if (r0 < r1) goto L26
            j8 r0 = new j8
            r0.<init>()
            defpackage.g8.a = r0
            goto L4b
        L26:
            r1 = 24
            if (r0 < r1) goto L44
            java.lang.reflect.Method r0 = defpackage.i8.d
            if (r0 != 0) goto L35
            java.lang.String r1 = "TypefaceCompatApi24Impl"
            java.lang.String r2 = "Unable to collect necessary private methods.Fallback to legacy implementation."
            android.util.Log.w(r1, r2)
        L35:
            if (r0 == 0) goto L39
            r0 = 1
            goto L3a
        L39:
            r0 = 0
        L3a:
            if (r0 == 0) goto L44
            i8 r0 = new i8
            r0.<init>()
            defpackage.g8.a = r0
            goto L4b
        L44:
            h8 r0 = new h8
            r0.<init>()
            defpackage.g8.a = r0
        L4b:
            k4 r0 = new k4
            r1 = 16
            r0.<init>(r1)
            defpackage.g8.b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g8.<clinit>():void");
    }

    public static Typeface a(Context context, w7 w7Var, Resources resources, int i, int i2, b8 b8Var, Handler handler, boolean z) {
        Typeface typefaceA;
        if (w7Var instanceof z7) {
            z7 z7Var = (z7) w7Var;
            boolean z2 = true;
            if (!z ? b8Var != null : z7Var.c != 0) {
                z2 = false;
            }
            int i3 = z ? z7Var.b : -1;
            f9 f9Var = z7Var.a;
            k4<String, Typeface> k4Var = j9.a;
            String str = f9Var.e + "-" + i2;
            typefaceA = j9.a.a(str);
            if (typefaceA != null) {
                if (b8Var != null) {
                    b8Var.d(typefaceA);
                }
            } else if (z2 && i3 == -1) {
                j9.d dVarB = j9.b(context, f9Var, i2);
                if (b8Var != null) {
                    int i4 = dVarB.b;
                    if (i4 == 0) {
                        b8Var.b(dVarB.a, handler);
                    } else {
                        b8Var.a(i4, handler);
                    }
                }
                typefaceA = dVarB.a;
            } else {
                g9 g9Var = new g9(context, f9Var, i2, str);
                typefaceA = null;
                if (z2) {
                    try {
                        typefaceA = ((j9.d) j9.b.b(g9Var, i3)).a;
                    } catch (InterruptedException unused) {
                    }
                } else {
                    h9 h9Var = b8Var == null ? null : new h9(b8Var, handler);
                    synchronized (j9.c) {
                        m4<String, ArrayList<k9.c<j9.d>>> m4Var = j9.d;
                        ArrayList<k9.c<j9.d>> orDefault = m4Var.getOrDefault(str, null);
                        if (orDefault == null) {
                            if (h9Var != null) {
                                ArrayList<k9.c<j9.d>> arrayList = new ArrayList<>();
                                arrayList.add(h9Var);
                                m4Var.put(str, arrayList);
                            }
                            k9 k9Var = j9.b;
                            i9 i9Var = new i9(str);
                            Objects.requireNonNull(k9Var);
                            k9Var.a(new l9(k9Var, g9Var, new Handler(), i9Var));
                        } else if (h9Var != null) {
                            orDefault.add(h9Var);
                        }
                    }
                }
            }
        } else {
            typefaceA = a.a(context, (x7) w7Var, resources, i2);
            if (b8Var != null) {
                if (typefaceA != null) {
                    b8Var.b(typefaceA, handler);
                } else {
                    b8Var.a(-3, handler);
                }
            }
        }
        if (typefaceA != null) {
            b.b(c(resources, i, i2), typefaceA);
        }
        return typefaceA;
    }

    public static Typeface b(Context context, Resources resources, int i, String str, int i2) {
        Typeface typefaceD = a.d(context, resources, i, str, i2);
        if (typefaceD != null) {
            b.b(c(resources, i, i2), typefaceD);
        }
        return typefaceD;
    }

    public static String c(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
