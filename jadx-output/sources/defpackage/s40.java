package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class s40 extends o40<Float> {
    public s40(String str, Float f) {
        super(1, str, f, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Float d(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(this.b, ((Float) this.c).floatValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Float e(Bundle bundle) {
        String strValueOf = String.valueOf(this.b);
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Float) this.c;
        }
        String strValueOf2 = String.valueOf(this.b);
        return Float.valueOf(bundle.getFloat(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // defpackage.o40
    public final void f(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(this.b, f.floatValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Float i(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(this.b, ((Float) this.c).floatValue()));
    }
}
