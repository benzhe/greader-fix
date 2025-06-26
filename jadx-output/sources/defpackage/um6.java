package defpackage;

import defpackage.sm6;

/* loaded from: classes.dex */
public class um6 extends sm6.b {
    public final /* synthetic */ Object l;
    public final /* synthetic */ long m;
    public final /* synthetic */ vm6 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public um6(vm6 vm6Var, String str, int i, String str2, Object obj, long j) {
        super(str, i, str2);
        this.n = vm6Var;
        this.l = obj;
        this.m = j;
    }

    @Override // sm6.b
    public void a() {
        try {
            this.n.d(this.l, this.m);
        } catch (Throwable th) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
    }
}
