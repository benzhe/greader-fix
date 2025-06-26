package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzvt;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class x82 implements nd2<Bundle> {
    public final zzvt a;
    public final String b;
    public final boolean c;
    public final String d;
    public final float e;
    public final int f;
    public final int g;
    public final String h;
    public final boolean i;

    public x82(zzvt zzvtVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        bi.j(zzvtVar, "the adSize must not be null");
        this.a = zzvtVar;
        this.b = str;
        this.c = z;
        this.d = str2;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = str3;
        this.i = z2;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.a.i == -1) {
            bundle2.putString("smart_w", "full");
        }
        if (this.a.f == -2) {
            bundle2.putString("smart_h", "auto");
        }
        Boolean bool = Boolean.TRUE;
        c50.a2(bundle2, "ene", bool, this.a.n);
        if (this.a.q) {
            bundle2.putString("rafmt", "102");
        }
        if (this.a.r) {
            bundle2.putString("rafmt", "103");
        }
        if (this.a.s) {
            bundle2.putString("rafmt", "105");
        }
        c50.a2(bundle2, "inline_adaptive_slot", bool, this.i);
        c50.a2(bundle2, "interscroller_slot", bool, this.a.s);
        String str = this.b;
        if (str != null) {
            bundle2.putString("format", str);
        }
        if (this.c) {
            bundle2.putString("fluid", "height");
        }
        String str2 = this.d;
        if (!TextUtils.isEmpty(str2)) {
            bundle2.putString("sz", str2);
        }
        bundle2.putFloat("u_sd", this.e);
        bundle2.putInt("sw", this.f);
        bundle2.putInt("sh", this.g);
        String str3 = this.h;
        if (true ^ TextUtils.isEmpty(str3)) {
            bundle2.putString("sc", str3);
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zzvt[] zzvtVarArr = this.a.k;
        if (zzvtVarArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.a.f);
            bundle3.putInt("width", this.a.i);
            bundle3.putBoolean("is_fluid_height", this.a.m);
            arrayList.add(bundle3);
        } else {
            for (zzvt zzvtVar : zzvtVarArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzvtVar.m);
                bundle4.putInt("height", zzvtVar.f);
                bundle4.putInt("width", zzvtVar.i);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
