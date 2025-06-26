package defpackage;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class dx0 implements rv2<Map<String, String>> {
    public final /* synthetic */ List a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Uri c;
    public final /* synthetic */ ww0 d;

    public dx0(ww0 ww0Var, List list, String str, Uri uri) {
        this.d = ww0Var;
        this.a = list;
        this.b = str;
        this.c = uri;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        String strValueOf = String.valueOf(this.c);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 33);
        sb.append("Failed to parse gmsg params for: ");
        sb.append(strValueOf);
        is0.zzez(sb.toString());
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(Map<String, String> map) {
        this.d.A(map, this.a, this.b);
    }
}
