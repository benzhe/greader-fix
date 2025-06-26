package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public final class x64 extends b74<Double> {
    public x64(z64 z64Var, Double d) {
        super(z64Var, "measurement.test.double_flag", d);
    }

    @Override // defpackage.b74
    public final /* bridge */ /* synthetic */ Double a(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            String strB = b();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(String.valueOf(strB).length() + 27 + str.length());
            sb.append("Invalid double value for ");
            sb.append(strB);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
