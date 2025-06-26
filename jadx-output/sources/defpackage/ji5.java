package defpackage;

import android.os.Build;
import defpackage.ii5;

/* loaded from: classes.dex */
public class ji5 implements ii5.g {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ long c;
    public final /* synthetic */ long d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ int f;

    public ji5(ii5 ii5Var, int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = j2;
        this.e = z;
        this.f = i3;
    }

    @Override // ii5.g
    public void a(rl5 rl5Var) throws Exception {
        int i = this.a;
        String str = Build.MODEL;
        int i2 = this.b;
        long j = this.c;
        long j2 = this.d;
        boolean z = this.e;
        int i3 = this.f;
        String str2 = Build.MANUFACTURER;
        String str3 = Build.PRODUCT;
        pl5 pl5VarJ = sl5.j(str);
        pl5 pl5VarJ2 = sl5.j(str3);
        pl5 pl5VarJ3 = sl5.j(str2);
        rl5Var.r(9, 2);
        int iC = rl5.c(3, i) + 0;
        int iB = pl5VarJ == null ? 0 : rl5.b(4, pl5VarJ);
        int iF = rl5.f(5, i2);
        int iG = rl5.g(6, j);
        int iG2 = rl5.g(7, j2);
        rl5Var.p(rl5.f(12, i3) + rl5.a(10, z) + iG2 + iG + iF + iC + iB + (pl5VarJ3 == null ? 0 : rl5.b(13, pl5VarJ3)) + (pl5VarJ2 == null ? 0 : rl5.b(14, pl5VarJ2)));
        rl5Var.n(3, i);
        rl5Var.m(4, pl5VarJ);
        rl5Var.s(5, i2);
        rl5Var.t(6, j);
        rl5Var.t(7, j2);
        rl5Var.l(10, z);
        rl5Var.s(12, i3);
        if (pl5VarJ3 != null) {
            rl5Var.m(13, pl5VarJ3);
        }
        if (pl5VarJ2 != null) {
            rl5Var.m(14, pl5VarJ2);
        }
    }
}
