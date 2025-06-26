package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class y92 implements nd2<Bundle> {
    public final int a;
    public final boolean b;
    public final boolean c;
    public final int d;
    public final int e;
    public final int f;
    public final float g;
    public final boolean h;

    public y92(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = f;
        this.h = z3;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.a);
        bundle2.putBoolean("ma", this.b);
        bundle2.putBoolean("sp", this.c);
        bundle2.putInt("muv", this.d);
        bundle2.putInt("rm", this.e);
        bundle2.putInt("riv", this.f);
        bundle2.putFloat("android_app_volume", this.g);
        bundle2.putBoolean("android_app_muted", this.h);
    }
}
