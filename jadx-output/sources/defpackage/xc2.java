package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class xc2 implements nd2<Bundle> {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final Long e;

    public xc2(String str, String str2, String str3, String str4, Long l) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = l;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.a;
        if (str != null) {
            bundle2.putString("gmp_app_id", str);
        }
        String str2 = this.b;
        if (str2 != null) {
            bundle2.putString("fbs_aiid", str2);
        }
        String str3 = this.c;
        if (str3 != null) {
            bundle2.putString("fbs_aeid", str3);
        }
        String str4 = this.d;
        if (str4 != null) {
            bundle2.putString("apm_id_origin", str4);
        }
        Long l = this.e;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
