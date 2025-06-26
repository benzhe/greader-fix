package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;
import defpackage.d0;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class yv3<T> {
    public static final Object g = new Object();
    public static Context h;
    public static volatile Boolean i;
    public static volatile Boolean j;
    public final iw3 a;
    public final String b;
    public final String c;
    public final T d;
    public volatile vv3 e = null;
    public volatile SharedPreferences f = null;

    /* JADX WARN: Multi-variable type inference failed */
    public yv3(iw3 iw3Var, String str, Object obj, cw3 cw3Var) {
        String str2 = iw3Var.a;
        if (str2 == null && iw3Var.b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && iw3Var.b != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.a = iw3Var;
        String strValueOf = String.valueOf(iw3Var.c);
        String strValueOf2 = String.valueOf(str);
        this.c = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        String strValueOf3 = String.valueOf(iw3Var.d);
        String strValueOf4 = String.valueOf(str);
        this.b = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
        this.d = obj;
    }

    public static <V> V c(gw3<V> gw3Var) {
        try {
            return gw3Var.k();
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return gw3Var.k();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    public static boolean d(final String str) {
        if (h()) {
            return ((Boolean) c(new gw3(str) { // from class: bw3
                public final String a;

                {
                    this.a = str;
                }

                @Override // defpackage.gw3
                public final Object k() {
                    Object obj;
                    boolean zBooleanValue;
                    String str2 = this.a;
                    ContentResolver contentResolver = yv3.h.getContentResolver();
                    Uri uri = a24.a;
                    synchronized (a24.class) {
                        a24.c(contentResolver);
                        obj = a24.k;
                    }
                    HashMap<String, Boolean> map = a24.g;
                    Boolean bool = Boolean.FALSE;
                    Boolean bool2 = (Boolean) a24.a(map, str2, bool);
                    if (bool2 != null) {
                        zBooleanValue = bool2.booleanValue();
                    } else {
                        String strB = a24.b(contentResolver, str2);
                        boolean z = false;
                        if (strB == null || strB.equals("")) {
                            bool = bool2;
                            a24.e(obj, map, str2, bool);
                            zBooleanValue = z;
                        } else {
                            if (a24.c.matcher(strB).matches()) {
                                bool = Boolean.TRUE;
                                z = true;
                            } else if (!a24.d.matcher(strB).matches()) {
                                Log.w("Gservices", "attempt to read gservices key " + str2 + " (value \"" + strB + "\") as boolean");
                                bool = bool2;
                            }
                            a24.e(obj, map, str2, bool);
                            zBooleanValue = z;
                        }
                    }
                    return Boolean.valueOf(zBooleanValue);
                }
            })).booleanValue();
        }
        return false;
    }

    public static boolean h() {
        if (i == null) {
            Context context = h;
            if (context == null) {
                return false;
            }
            i = Boolean.valueOf(d0.h.i(context, "com.google.android.providers.gsf.permission.READ_GSERVICES", Binder.getCallingPid(), Binder.getCallingUid(), Binder.getCallingPid() == Process.myPid() ? context.getPackageName() : null) == 0);
        }
        return i.booleanValue();
    }

    public final T a() {
        if (h == null) {
            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
        }
        if (this.a.f) {
            T tG = g();
            if (tG != null) {
                return tG;
            }
            T tF = f();
            if (tF != null) {
                return tF;
            }
        } else {
            T tF2 = f();
            if (tF2 != null) {
                return tF2;
            }
            T tG2 = g();
            if (tG2 != null) {
                return tG2;
            }
        }
        return this.d;
    }

    public abstract T b(SharedPreferences sharedPreferences);

    public abstract T e(String str);

    public final T f() {
        boolean zBooleanValue;
        if (d("gms:phenotype:phenotype_flag:debug_bypass_phenotype")) {
            String strValueOf = String.valueOf(this.b);
            Log.w("PhenotypeFlag", strValueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(strValueOf) : new String("Bypass reading Phenotype values for flag: "));
        } else {
            iw3 iw3Var = this.a;
            if (iw3Var.b != null) {
                if (this.e == null) {
                    ContentResolver contentResolver = h.getContentResolver();
                    Uri uri = this.a.b;
                    ConcurrentHashMap<Uri, vv3> concurrentHashMap = vv3.h;
                    vv3 vv3Var = concurrentHashMap.get(uri);
                    if (vv3Var == null) {
                        vv3Var = new vv3(contentResolver, uri);
                        vv3 vv3VarPutIfAbsent = concurrentHashMap.putIfAbsent(uri, vv3Var);
                        if (vv3VarPutIfAbsent == null) {
                            vv3Var.a.registerContentObserver(vv3Var.b, false, vv3Var.c);
                        } else {
                            vv3Var = vv3VarPutIfAbsent;
                        }
                    }
                    this.e = vv3Var;
                }
                final vv3 vv3Var2 = this.e;
                String str = (String) c(new gw3(this, vv3Var2) { // from class: zv3
                    public final yv3 a;
                    public final vv3 b;

                    {
                        this.a = this;
                        this.b = vv3Var2;
                    }

                    @Override // defpackage.gw3
                    public final Object k() {
                        yv3 yv3Var = this.a;
                        vv3 vv3Var3 = this.b;
                        Objects.requireNonNull(vv3Var3);
                        Map<String, String> mapA = yv3.d("gms:phenotype:phenotype_flag:debug_disable_caching") ? vv3Var3.a() : vv3Var3.e;
                        if (mapA == null) {
                            synchronized (vv3Var3.d) {
                                mapA = vv3Var3.e;
                                if (mapA == null) {
                                    mapA = vv3Var3.a();
                                    vv3Var3.e = mapA;
                                }
                            }
                        }
                        if (mapA == null) {
                            mapA = Collections.emptyMap();
                        }
                        return mapA.get(yv3Var.b);
                    }
                });
                if (str != null) {
                    return e(str);
                }
            } else if (iw3Var.a != null) {
                if (Build.VERSION.SDK_INT < 24 || h.isDeviceProtectedStorage()) {
                    zBooleanValue = true;
                } else {
                    if (j == null || !j.booleanValue()) {
                        j = Boolean.valueOf(((UserManager) h.getSystemService(UserManager.class)).isUserUnlocked());
                    }
                    zBooleanValue = j.booleanValue();
                }
                if (!zBooleanValue) {
                    return null;
                }
                if (this.f == null) {
                    this.f = h.getSharedPreferences(this.a.a, 0);
                }
                SharedPreferences sharedPreferences = this.f;
                if (sharedPreferences.contains(this.b)) {
                    return b(sharedPreferences);
                }
            }
        }
        return null;
    }

    public final T g() {
        String str;
        if (this.a.e || !h() || (str = (String) c(new gw3(this) { // from class: aw3
            public final yv3 a;

            {
                this.a = this;
            }

            @Override // defpackage.gw3
            public final Object k() {
                yv3 yv3Var = this.a;
                Objects.requireNonNull(yv3Var);
                return a24.b(yv3.h.getContentResolver(), yv3Var.c);
            }
        })) == null) {
            return null;
        }
        return e(str);
    }
}
