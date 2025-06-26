package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzaq;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ks4 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final zzaq f;

    public ks4(rx4 rx4Var, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaq zzaqVar;
        bi.g(str2);
        bi.g(str3);
        this.a = str2;
        this.b = str3;
        this.c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        if (j2 != 0 && j2 > j) {
            rx4Var.a().i.b("Event created with reverse previous/current timestamps. appId", qw4.t(str2));
        }
        if (bundle.isEmpty()) {
            zzaqVar = new zzaq(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    rx4Var.a().f.a("Param name can't be null");
                    it.remove();
                } else {
                    Object objS = rx4Var.t().s(next, bundle2.get(next));
                    if (objS == null) {
                        rx4Var.a().i.b("Param value can't be null", rx4Var.u().q(next));
                        it.remove();
                    } else {
                        rx4Var.t().z(bundle2, next, objS);
                    }
                }
            }
            zzaqVar = new zzaq(bundle2);
        }
        this.f = zzaqVar;
    }

    public final ks4 a(rx4 rx4Var, long j) {
        return new ks4(rx4Var, this.c, this.a, this.b, this.d, j, this.f);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String strValueOf = String.valueOf(this.f);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 33 + String.valueOf(str2).length() + strValueOf.length());
        jo.J(sb, "Event{appId='", str, "', name='", str2);
        sb.append("', params=");
        sb.append(strValueOf);
        sb.append('}');
        return sb.toString();
    }

    public ks4(rx4 rx4Var, String str, String str2, String str3, long j, long j2, zzaq zzaqVar) {
        bi.g(str2);
        bi.g(str3);
        Objects.requireNonNull(zzaqVar, "null reference");
        this.a = str2;
        this.b = str3;
        this.c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        if (j2 != 0 && j2 > j) {
            rx4Var.a().i.c("Event created with reverse previous/current timestamps. appId, name", qw4.t(str2), qw4.t(str3));
        }
        this.f = zzaqVar;
    }
}
