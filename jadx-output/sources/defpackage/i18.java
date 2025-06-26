package defpackage;

import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class i18 {
    public final k18 a;
    public boolean b;
    public final ArrayList<k18> c;
    public final HashSet<p08<?>> d;
    public final boolean e;
    public final boolean f;

    public i18(boolean z, boolean z2) {
        this.e = z;
        this.f = z2;
        p18 p18Var = p18.e;
        this.a = p18.d;
        this.c = new ArrayList<>();
        this.d = new HashSet<>();
    }

    public final r08 a(boolean z, boolean z2) {
        boolean z3 = true;
        boolean z4 = this.e || z2;
        if (!this.f && !z) {
            z3 = false;
        }
        return new r08(z4, z3, false, 4);
    }
}
