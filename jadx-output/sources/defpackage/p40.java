package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class p40 extends o40<Long> {
    public p40(String str, Long l) {
        super(1, str, l, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Long d(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(this.b, ((Long) this.c).longValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Long e(Bundle bundle) {
        String strValueOf = String.valueOf(this.b);
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Long) this.c;
        }
        String strValueOf2 = String.valueOf(this.b);
        return Long.valueOf(bundle.getLong(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // defpackage.o40
    public final void f(SharedPreferences.Editor editor, Long l) {
        editor.putLong(this.b, l.longValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Long i(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(this.b, ((Long) this.c).longValue()));
    }
}
