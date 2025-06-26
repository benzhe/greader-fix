package defpackage;

import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

/* loaded from: classes.dex */
public final class lw4 extends my4 {
    public static final AtomicReference<String[]> c = new AtomicReference<>();
    public static final AtomicReference<String[]> d = new AtomicReference<>();
    public static final AtomicReference<String[]> e = new AtomicReference<>();

    public lw4(rx4 rx4Var) {
        super(rx4Var);
    }

    public static final String u(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Objects.requireNonNull(atomicReference, "null reference");
        bi.b(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (p25.G(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    str2 = strArr3[i];
                    if (str2 == null) {
                        str2 = strArr2[i] + "(" + strArr[i] + ")";
                        strArr3[i] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    @Override // defpackage.my4
    public final boolean f() {
        return false;
    }

    public final boolean n() {
        rx4 rx4Var = this.a;
        c35 c35Var = rx4Var.f;
        return rx4Var.x() && Log.isLoggable(this.a.a().v(), 3);
    }

    public final String p(String str) {
        if (str == null) {
            return null;
        }
        return !n() ? str : u(str, oy4.c, oy4.a, c);
    }

    public final String q(String str) {
        if (str == null) {
            return null;
        }
        return !n() ? str : u(str, py4.b, py4.a, d);
    }

    public final String r(String str) {
        if (str == null) {
            return null;
        }
        if (!n()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return u(str, qy4.b, qy4.a, e);
        }
        return "experiment_id(" + str + ")";
    }

    public final String s(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!n()) {
            return bundle.toString();
        }
        StringBuilder sbZ = jo.z("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sbZ.length() != 8) {
                sbZ.append(", ");
            }
            sbZ.append(q(str));
            sbZ.append("=");
            Object obj = bundle.get(str);
            sbZ.append(obj instanceof Bundle ? t(new Object[]{obj}) : obj instanceof Object[] ? t((Object[]) obj) : obj instanceof ArrayList ? t(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sbZ.append("}]");
        return sbZ.toString();
    }

    public final String t(Object[] objArr) {
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sbZ = jo.z("[");
        for (Object obj : objArr) {
            String strS = obj instanceof Bundle ? s((Bundle) obj) : String.valueOf(obj);
            if (strS != null) {
                if (sbZ.length() != 1) {
                    sbZ.append(", ");
                }
                sbZ.append(strS);
            }
        }
        sbZ.append("]");
        return sbZ.toString();
    }
}
