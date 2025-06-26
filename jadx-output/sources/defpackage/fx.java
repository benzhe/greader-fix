package defpackage;

import com.google.android.gms.ads.internal.zzf;

/* loaded from: classes.dex */
public final class fx implements sr2 {
    public final /* synthetic */ zzf a;

    public fx(zzf zzfVar) {
        this.a = zzfVar;
    }

    @Override // defpackage.sr2
    public final void a(int i, long j) {
        this.a.l.f(i, System.currentTimeMillis() - j);
    }

    @Override // defpackage.sr2
    public final void b(int i, long j, String str) {
        this.a.l.c(i, System.currentTimeMillis() - j, null, null, str);
    }
}
