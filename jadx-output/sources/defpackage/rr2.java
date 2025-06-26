package defpackage;

import android.content.Context;
import android.os.Build;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class rr2 {
    public final Context a;
    public final pq2 b;

    public rr2(Context context, pq2 pq2Var) {
        this.a = context;
        this.b = pq2Var;
    }

    public static boolean a(kd3 kd3Var) {
        int i = qr2.a[kd3Var.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.kd3 b() {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rr2.b():kd3");
    }

    public final void c(byte[] bArr, String str) {
        if (this.b == null) {
            return;
        }
        StringBuilder sbZ = jo.z("os.arch:");
        sbZ.append(System.getProperty("os.arch"));
        sbZ.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sbZ.append("supported_abis:");
                sbZ.append(Arrays.toString(strArr));
                sbZ.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sbZ.append("CPU_ABI:");
        jo.H(sbZ, Build.CPU_ABI, ";", "CPU_ABI2:");
        sbZ.append(Build.CPU_ABI2);
        sbZ.append(";");
        if (bArr != null) {
            sbZ.append("ELF:");
            sbZ.append(Arrays.toString(bArr));
            sbZ.append(";");
        }
        if (str != null) {
            jo.H(sbZ, "dbg:", str, ";");
        }
        this.b.e(4007, sbZ.toString());
    }
}
