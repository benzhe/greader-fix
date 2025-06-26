package defpackage;

import android.content.Context;
import defpackage.sf5;
import java.util.UUID;

/* loaded from: classes.dex */
public class kh6 {
    public static final sf5<?> b;
    public final Context a;

    static {
        sf5.b bVarA = sf5.a(kh6.class);
        bVarA.a(new ig5(hh6.class, 1, 0));
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.d(xh6.a);
        b = bVarA.b();
    }

    public kh6(Context context) {
        this.a = context;
    }

    public synchronized String a() {
        String string = this.a.getSharedPreferences("com.google.mlkit.internal", 0).getString("ml_sdk_instance_id", null);
        if (string != null) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        this.a.getSharedPreferences("com.google.mlkit.internal", 0).edit().putString("ml_sdk_instance_id", string2).apply();
        return string2;
    }
}
