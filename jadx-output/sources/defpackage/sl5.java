package defpackage;

import android.app.ActivityManager;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class sl5 {
    public static final pl5 a = pl5.a("0");
    public static final pl5 b = pl5.a("Unity");

    public static int a(pl5 pl5Var, pl5 pl5Var2) {
        int iB = rl5.b(3, pl5Var) + rl5.g(2, 0L) + rl5.g(1, 0L) + 0;
        return pl5Var2 != null ? iB + rl5.b(4, pl5Var2) : iB;
    }

    public static int b(String str, String str2) {
        int iB = rl5.b(1, pl5.a(str));
        if (str2 == null) {
            str2 = "";
        }
        return rl5.b(2, pl5.a(str2)) + iB;
    }

    public static int c(en5 en5Var, int i, int i2) {
        int i3 = 0;
        int iB = rl5.b(1, pl5.a(en5Var.b)) + 0;
        String str = en5Var.a;
        if (str != null) {
            iB += rl5.b(3, pl5.a(str));
        }
        for (StackTraceElement stackTraceElement : en5Var.c) {
            int iH = h(stackTraceElement, true);
            iB += rl5.d(iH) + rl5.e(4) + iH;
        }
        en5 en5Var2 = en5Var.d;
        if (en5Var2 == null) {
            return iB;
        }
        if (i < i2) {
            int iC = c(en5Var2, i + 1, i2);
            return iB + rl5.d(iC) + rl5.e(6) + iC;
        }
        while (en5Var2 != null) {
            en5Var2 = en5Var2.d;
            i3++;
        }
        return iB + rl5.f(7, i3);
    }

    public static int d() {
        pl5 pl5Var = a;
        return rl5.g(3, 0L) + rl5.b(2, pl5Var) + rl5.b(1, pl5Var) + 0;
    }

    public static int e(en5 en5Var, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, pl5 pl5Var, pl5 pl5Var2) {
        int iE = rl5.e(1);
        int i2 = i(thread, stackTraceElementArr, 4, true);
        int iD = rl5.d(i2) + iE + i2 + 0;
        int length = threadArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i(threadArr[i3], list.get(i3), 0, false);
            iD += rl5.d(i4) + iE + i4;
        }
        int iC = c(en5Var, 1, i);
        int iD2 = rl5.d(iC) + rl5.e(2) + iC + iD;
        int iD3 = d();
        int iD4 = rl5.d(iD3) + rl5.e(3) + iD3 + iD2;
        int iA = a(pl5Var, pl5Var2);
        return rl5.d(iA) + rl5.e(3) + iA + iD4;
    }

    public static int f(en5 en5Var, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, pl5 pl5Var, pl5 pl5Var2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2) {
        int iE = e(en5Var, thread, stackTraceElementArr, threadArr, list, i, pl5Var, pl5Var2);
        int iD = rl5.d(iE) + rl5.e(1) + iE + 0;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                int iB = b(entry.getKey(), entry.getValue());
                iD += rl5.d(iB) + rl5.e(2) + iB;
            }
        }
        if (runningAppProcessInfo != null) {
            iD += rl5.a(3, runningAppProcessInfo.importance != 100);
        }
        return rl5.f(4, i2) + iD;
    }

    public static int g(Float f, int i, boolean z, int i2, long j, long j2) {
        int iE = 0;
        if (f != null) {
            f.floatValue();
            iE = 0 + rl5.e(1) + 4;
        }
        return rl5.g(6, j2) + rl5.g(5, j) + rl5.f(4, i2) + rl5.a(3, z) + iE + rl5.d((i >> 31) ^ (i << 1)) + rl5.e(2);
    }

    public static int h(StackTraceElement stackTraceElement, boolean z) {
        int iB = rl5.b(2, pl5.a(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName())) + (stackTraceElement.isNativeMethod() ? rl5.g(1, Math.max(stackTraceElement.getLineNumber(), 0)) : rl5.g(1, 0L)) + 0;
        if (stackTraceElement.getFileName() != null) {
            iB += rl5.b(3, pl5.a(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            iB += rl5.g(4, stackTraceElement.getLineNumber());
        }
        return rl5.f(5, z ? 2 : 0) + iB;
    }

    public static int i(Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        int iF = rl5.f(2, i) + rl5.b(1, pl5.a(thread.getName()));
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            int iH = h(stackTraceElement, z);
            iF += rl5.d(iH) + rl5.e(3) + iH;
        }
        return iF;
    }

    public static pl5 j(String str) {
        if (str == null) {
            return null;
        }
        return pl5.a(str);
    }

    public static void k(rl5 rl5Var, int i, StackTraceElement stackTraceElement, boolean z) throws Exception {
        rl5Var.p((i << 3) | 2);
        rl5Var.p(h(stackTraceElement, z));
        if (stackTraceElement.isNativeMethod()) {
            rl5Var.t(1, Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            rl5Var.t(1, 0L);
        }
        rl5Var.m(2, pl5.a(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            rl5Var.m(3, pl5.a(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            rl5Var.t(4, stackTraceElement.getLineNumber());
        }
        rl5Var.s(5, z ? 4 : 0);
    }

    public static void l(rl5 rl5Var, en5 en5Var, int i, int i2, int i3) throws Exception {
        rl5Var.p((i3 << 3) | 2);
        rl5Var.p(c(en5Var, 1, i2));
        rl5Var.m(1, pl5.a(en5Var.b));
        String str = en5Var.a;
        if (str != null) {
            rl5Var.m(3, pl5.a(str));
        }
        int i4 = 0;
        for (StackTraceElement stackTraceElement : en5Var.c) {
            k(rl5Var, 4, stackTraceElement, true);
        }
        en5 en5Var2 = en5Var.d;
        if (en5Var2 != null) {
            if (i < i2) {
                l(rl5Var, en5Var2, i + 1, i2, 6);
                return;
            }
            while (en5Var2 != null) {
                en5Var2 = en5Var2.d;
                i4++;
            }
            rl5Var.s(7, i4);
        }
    }

    public static void m(rl5 rl5Var, Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) throws Exception {
        rl5Var.r(1, 2);
        rl5Var.p(i(thread, stackTraceElementArr, i, z));
        rl5Var.m(1, pl5.a(thread.getName()));
        rl5Var.s(2, i);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            k(rl5Var, 3, stackTraceElement, z);
        }
    }
}
