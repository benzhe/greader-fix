package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public final class v64 extends b74<Long> {
    public v64(z64 z64Var, String str, Long l) {
        super(z64Var, str, l);
    }

    @Override // defpackage.b74
    public final /* bridge */ /* synthetic */ Long a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            String strB = b();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(String.valueOf(strB).length() + 25 + str.length());
            sb.append("Invalid long value for ");
            sb.append(strB);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
