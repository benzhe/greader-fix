package defpackage;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class fw3<T> extends yv3<T> {
    public final Object k;
    public String l;
    public T m;
    public final /* synthetic */ hw3 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fw3(iw3 iw3Var, String str, Object obj, hw3 hw3Var) {
        super(iw3Var, str, obj, null);
        this.n = hw3Var;
        this.k = new Object();
    }

    @Override // defpackage.yv3
    public final T b(SharedPreferences sharedPreferences) {
        try {
            return e(sharedPreferences.getString(this.b, ""));
        } catch (ClassCastException e) {
            String strValueOf = String.valueOf(this.b);
            Log.e("PhenotypeFlag", strValueOf.length() != 0 ? "Invalid byte[] value in SharedPreferences for ".concat(strValueOf) : new String("Invalid byte[] value in SharedPreferences for "), e);
            return null;
        }
    }

    @Override // defpackage.yv3
    public final T e(String str) {
        T t;
        try {
            synchronized (this.k) {
                if (!str.equals(this.l)) {
                    hw3 hw3Var = this.n;
                    byte[] bArrDecode = Base64.decode(str, 3);
                    Objects.requireNonNull((y14) hw3Var);
                    T t2 = (T) k14.k(bArrDecode);
                    this.l = str;
                    this.m = t2;
                }
                t = this.m;
            }
            return t;
        } catch (IOException | IllegalArgumentException unused) {
            String str2 = this.b;
            Log.e("PhenotypeFlag", jo.d(jo.x(str, jo.x(str2, 27)), "Invalid byte[] value for ", str2, ": ", str));
            return null;
        }
    }
}
