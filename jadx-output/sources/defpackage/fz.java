package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import defpackage.ry;

/* loaded from: classes.dex */
public final class fz implements ry.a {
    public final /* synthetic */ BasePendingResult a;
    public final /* synthetic */ ez b;

    public fz(ez ezVar, BasePendingResult basePendingResult) {
        this.b = ezVar;
        this.a = basePendingResult;
    }

    @Override // ry.a
    public final void a(Status status) {
        this.b.a.remove(this.a);
    }
}
