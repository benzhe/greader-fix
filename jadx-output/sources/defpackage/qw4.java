package defpackage;

import android.text.TextUtils;
import android.util.Log;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes.dex */
public final class qw4 extends my4 {
    public char c;
    public long d;
    public String e;
    public final ow4 f;
    public final ow4 g;
    public final ow4 h;
    public final ow4 i;
    public final ow4 j;
    public final ow4 k;
    public final ow4 l;
    public final ow4 m;
    public final ow4 n;

    public qw4(rx4 rx4Var) {
        super(rx4Var);
        this.c = (char) 0;
        this.d = -1L;
        this.f = new ow4(this, 6, false, false);
        this.g = new ow4(this, 6, true, false);
        this.h = new ow4(this, 6, false, true);
        this.i = new ow4(this, 5, false, false);
        this.j = new ow4(this, 5, true, false);
        this.k = new ow4(this, 5, false, true);
        this.l = new ow4(this, 4, false, false);
        this.m = new ow4(this, 3, false, false);
        this.n = new ow4(this, 2, false, false);
    }

    public static Object t(String str) {
        if (str == null) {
            return null;
        }
        return new pw4(str);
    }

    public static String w(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strX = x(z, obj);
        String strX2 = x(z, obj2);
        String strX3 = x(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strX)) {
            sb.append(str2);
            sb.append(strX);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strX2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strX2);
        }
        if (!TextUtils.isEmpty(strX3)) {
            sb.append(str3);
            sb.append(strX3);
        }
        return sb.toString();
    }

    public static String x(boolean z, Object obj) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str.length() + 43 + str.length());
            sb.append(str);
            sb.append(jRound);
            sb.append("...");
            sb.append(str);
            sb.append(jRound2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof pw4 ? ((pw4) obj).a : z ? "-" : String.valueOf(obj);
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String strY = y(rx4.class.getCanonicalName());
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        while (true) {
            if (i >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && y(className).equals(strY)) {
                sb2.append(": ");
                sb2.append(stackTraceElement);
                break;
            }
            i++;
        }
        return sb2.toString();
    }

    public static String y(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
    }

    @Override // defpackage.my4
    public final boolean f() {
        return false;
    }

    public final ow4 n() {
        return this.f;
    }

    public final ow4 p() {
        return this.i;
    }

    public final ow4 q() {
        return this.k;
    }

    public final ow4 r() {
        return this.m;
    }

    public final ow4 s() {
        return this.n;
    }

    public final void u(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(v(), i)) {
            Log.println(i, v(), w(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        Objects.requireNonNull(str, "null reference");
        ox4 ox4Var = this.a.j;
        if (ox4Var == null) {
            Log.println(6, v(), "Scheduler not set. Not logging error/warn");
        } else if (ox4Var.h()) {
            ox4Var.q(new nw4(this, i >= 9 ? 8 : i, str, obj, obj2, obj3));
        } else {
            Log.println(6, v(), "Scheduler not initialized. Not logging error/warn");
        }
    }

    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    public final String v() {
        String str;
        synchronized (this) {
            if (this.e == null) {
                rx4 rx4Var = this.a;
                String str2 = rx4Var.d;
                if (str2 != null) {
                    this.e = str2;
                } else {
                    c35 c35Var = rx4Var.g.a.f;
                    this.e = "FA";
                }
            }
            Objects.requireNonNull(this.e, "null reference");
            str = this.e;
        }
        return str;
    }
}
