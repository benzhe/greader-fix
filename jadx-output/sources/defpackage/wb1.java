package defpackage;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;

/* loaded from: classes.dex */
public final class wb1 extends xd1<zzp> implements zzp {
    public wb1(Set<sf1<zzp>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onPause() {
        D0(bc1.a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onResume() {
        D0(ac1.a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onUserLeaveHint() {
        D0(yb1.a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zza(final zzl zzlVar) {
        D0(new zd1(zzlVar) { // from class: zb1
            public final zzl a;

            {
                this.a = zzlVar;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((zzp) obj).zza(this.a);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzvz() {
        D0(dc1.a);
    }
}
