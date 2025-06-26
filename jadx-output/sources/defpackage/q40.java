package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class q40 extends o40<Integer> {
    public q40(String str, Integer num) {
        super(1, str, num, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Integer d(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(this.b, ((Integer) this.c).intValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Integer e(Bundle bundle) {
        String strValueOf = String.valueOf(this.b);
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Integer) this.c;
        }
        String strValueOf2 = String.valueOf(this.b);
        return Integer.valueOf(bundle.getInt(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // defpackage.o40
    public final void f(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(this.b, num.intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Integer i(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(this.b, ((Integer) this.c).intValue()));
    }
}
