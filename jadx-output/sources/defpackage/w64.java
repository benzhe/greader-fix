package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public final class w64 extends b74<Boolean> {
    public w64(z64 z64Var, String str, Boolean bool) {
        super(z64Var, str, bool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.b74
    public final /* bridge */ /* synthetic */ Boolean a(Object obj) {
        if (e64.c.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (e64.d.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        String strB = b();
        String str = (String) obj;
        StringBuilder sb = new StringBuilder(String.valueOf(strB).length() + 28 + str.length());
        sb.append("Invalid boolean value for ");
        sb.append(strB);
        sb.append(": ");
        sb.append(str);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
