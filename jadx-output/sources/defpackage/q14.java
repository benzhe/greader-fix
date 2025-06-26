package defpackage;

import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class q14 extends y04<q14> implements Cloneable {
    public static volatile q14[] g;

    public q14() {
        this.f = null;
        this.e = -1;
    }

    @Override // defpackage.y04, defpackage.c14
    public final void b(w04 w04Var) throws IOException {
        super.b(w04Var);
    }

    @Override // defpackage.y04, defpackage.c14
    public final Object clone() throws CloneNotSupportedException {
        try {
            return (q14) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.y04, defpackage.c14
    public final int e() {
        super.e();
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q14)) {
            return false;
        }
        q14 q14Var = (q14) obj;
        Objects.requireNonNull(q14Var);
        Objects.requireNonNull(q14Var);
        z04 z04Var = this.f;
        if (z04Var != null && !z04Var.b()) {
            return this.f.equals(q14Var.f);
        }
        z04 z04Var2 = q14Var.f;
        return z04Var2 == null || z04Var2.b();
    }

    @Override // defpackage.y04, defpackage.c14
    /* renamed from: f */
    public final /* synthetic */ c14 clone() throws CloneNotSupportedException {
        return (q14) clone();
    }

    @Override // defpackage.y04
    /* renamed from: g */
    public final /* synthetic */ y04 clone() throws CloneNotSupportedException {
        return (q14) clone();
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((q14.class.getName().hashCode() + 527) * 31) + 0) * 31) + 0) * 31;
        z04 z04Var = this.f;
        if (z04Var != null && !z04Var.b()) {
            iHashCode = this.f.hashCode();
        }
        return iHashCode2 + iHashCode;
    }
}
