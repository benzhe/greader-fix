package defpackage;

import android.content.Context;
import defpackage.ok5;
import defpackage.tk5;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class yi5 {
    public static final String e = String.format(Locale.US, "Crashlytics Android SDK/%s", "17.3.0");
    public static final Map<String, Integer> f;
    public final Context a;
    public final gj5 b;
    public final qh5 c;
    public final dn5 d;

    static {
        HashMap map = new HashMap();
        f = map;
        map.put("armeabi", 5);
        map.put("armeabi-v7a", 6);
        map.put("arm64-v8a", 9);
        map.put("x86", 0);
        map.put("x86_64", 1);
    }

    public yi5(Context context, gj5 gj5Var, qh5 qh5Var, dn5 dn5Var) {
        this.a = context;
        this.b = gj5Var;
        this.c = qh5Var;
        this.d = dn5Var;
    }

    public final tk5.d.AbstractC0042d.a.b.AbstractC0045b a(en5 en5Var, int i, int i2, int i3) {
        String str = en5Var.b;
        String str2 = en5Var.a;
        StackTraceElement[] stackTraceElementArr = en5Var.c;
        int i4 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        en5 en5Var2 = en5Var.d;
        if (i3 >= i2) {
            en5 en5Var3 = en5Var2;
            while (en5Var3 != null) {
                en5Var3 = en5Var3.d;
                i4++;
            }
        }
        tk5.d.AbstractC0042d.a.b.AbstractC0045b abstractC0045bA = null;
        Objects.requireNonNull(str, "Null type");
        uk5 uk5Var = new uk5(b(stackTraceElementArr, i));
        Integer numValueOf = Integer.valueOf(i4);
        if (en5Var2 != null && i4 == 0) {
            abstractC0045bA = a(en5Var2, i, i2, i3 + 1);
        }
        String str3 = numValueOf == null ? " overflowCount" : "";
        if (str3.isEmpty()) {
            return new lk5(str, str2, uk5Var, abstractC0045bA, numValueOf.intValue(), null);
        }
        throw new IllegalStateException(jo.n("Missing required properties:", str3));
    }

    public final uk5<tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a> b(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            ok5.b bVar = new ok5.b();
            bVar.e = Integer.valueOf(i);
            long lineNumber = 0;
            long jMax = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
            String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
                lineNumber = stackTraceElement.getLineNumber();
            }
            bVar.a = Long.valueOf(jMax);
            Objects.requireNonNull(str, "Null symbol");
            bVar.b = str;
            bVar.c = fileName;
            bVar.d = Long.valueOf(lineNumber);
            arrayList.add(bVar.a());
        }
        return new uk5<>(arrayList);
    }

    public final tk5.d.AbstractC0042d.a.b.AbstractC0046d c(Thread thread, StackTraceElement[] stackTraceElementArr, int i) {
        String name = thread.getName();
        Objects.requireNonNull(name, "Null name");
        Integer numValueOf = Integer.valueOf(i);
        uk5 uk5Var = new uk5(b(stackTraceElementArr, i));
        String str = numValueOf == null ? " importance" : "";
        if (str.isEmpty()) {
            return new nk5(name, numValueOf.intValue(), uk5Var, null);
        }
        throw new IllegalStateException(jo.n("Missing required properties:", str));
    }
}
