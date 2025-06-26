package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class o40<T> {
    public final int a;
    public final String b;
    public final T c;

    /* JADX WARN: Multi-variable type inference failed */
    public o40(int i, String str, Object obj, n40 n40Var) {
        this.a = i;
        this.b = str;
        this.c = obj;
        os3.j.d.a.add(this);
    }

    public static o40<Boolean> a(int i, String str, Boolean bool) {
        return new n40(i, str, bool);
    }

    public static o40 b(String str, int i) {
        return new q40(str, Integer.valueOf(i));
    }

    public static o40 c(String str, String str2) {
        return new r40(str, str2);
    }

    public static o40 g(String str) {
        r40 r40Var = new r40(str, null);
        os3.j.d.c.add(r40Var);
        return r40Var;
    }

    public static o40 h(String str, long j) {
        return new p40(str, Long.valueOf(j));
    }

    public abstract T d(SharedPreferences sharedPreferences);

    public abstract T e(Bundle bundle);

    public abstract void f(SharedPreferences.Editor editor, T t);

    public abstract T i(JSONObject jSONObject);
}
