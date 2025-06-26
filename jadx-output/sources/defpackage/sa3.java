package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public final class sa3 extends va3 {
    public String a;

    public sa3(String str) {
        this.a = str;
    }

    @Override // defpackage.va3
    public final void a(String str) {
        String str2 = this.a;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(str2).length() + 1);
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
