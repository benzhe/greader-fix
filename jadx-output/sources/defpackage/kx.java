package defpackage;

import android.content.Context;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class kx {
    public final Context a;
    public final String b;
    public final Map<String, String> c = new TreeMap();
    public String d;
    public String e;

    public kx(Context context, String str) {
        this.a = context.getApplicationContext();
        this.b = str;
    }
}
