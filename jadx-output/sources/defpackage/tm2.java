package defpackage;

/* loaded from: classes.dex */
public final class tm2 implements sr2 {
    public final /* synthetic */ pq2 a;

    public tm2(pq2 pq2Var) {
        this.a = pq2Var;
    }

    @Override // defpackage.sr2
    public final void a(int i, long j) {
        this.a.f(i, System.currentTimeMillis() - j);
    }

    @Override // defpackage.sr2
    public final void b(int i, long j, String str) {
        this.a.c(i, System.currentTimeMillis() - j, null, null, str);
    }
}
