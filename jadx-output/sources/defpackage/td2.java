package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class td2 implements nd2<Bundle> {
    public final boolean a;
    public final boolean b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final ArrayList<String> h;
    public final String i;
    public final String j;
    public final String k;
    public final boolean l;
    public final String m;
    public final long n;

    public td2(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, String str3, String str4, String str5, boolean z6, String str6, long j) {
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = z3;
        this.e = z4;
        this.f = z5;
        this.g = str2;
        this.h = arrayList;
        this.i = str3;
        this.j = str4;
        this.k = str5;
        this.l = z6;
        this.m = str6;
        this.n = j;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.a);
        bundle2.putBoolean("coh", this.b);
        bundle2.putString("gl", this.c);
        bundle2.putBoolean("simulator", this.d);
        bundle2.putBoolean("is_latchsky", this.e);
        bundle2.putBoolean("is_sidewinder", this.f);
        bundle2.putString("hl", this.g);
        if (!this.h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.h);
        }
        bundle2.putString("mv", this.i);
        bundle2.putString("submodel", this.m);
        Bundle bundle3 = bundle2.getBundle("device");
        if (bundle3 == null) {
            bundle3 = new Bundle();
        }
        bundle2.putBundle("device", bundle3);
        bundle3.putString("build", this.k);
        if (((Boolean) os3.j.f.a(y40.P1)).booleanValue()) {
            bundle3.putLong("remaining_data_partition_space", this.n);
        }
        Bundle bundle4 = bundle3.getBundle("browser");
        if (bundle4 == null) {
            bundle4 = new Bundle();
        }
        bundle3.putBundle("browser", bundle4);
        bundle4.putBoolean("is_browser_custom_tabs_capable", this.l);
        if (TextUtils.isEmpty(this.j)) {
            return;
        }
        Bundle bundle5 = bundle3.getBundle("play_store");
        if (bundle5 == null) {
            bundle5 = new Bundle();
        }
        bundle3.putBundle("play_store", bundle5);
        bundle5.putString("package_version", this.j);
    }
}
