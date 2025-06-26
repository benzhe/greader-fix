package defpackage;

import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class jy0 {
    public final int a;
    public final int b;
    public final int c;

    public jy0(int i, int i2, int i3) {
        this.a = i;
        this.c = i2;
        this.b = i3;
    }

    public static jy0 a() {
        return new jy0(0, 0, 0);
    }

    public static jy0 c(zzvt zzvtVar) {
        return zzvtVar.h ? new jy0(3, 0, 0) : zzvtVar.m ? new jy0(2, 0, 0) : zzvtVar.l ? a() : d(zzvtVar.j, zzvtVar.g);
    }

    public static jy0 d(int i, int i2) {
        return new jy0(1, i, i2);
    }

    public final boolean b() {
        return this.a == 3;
    }
}
