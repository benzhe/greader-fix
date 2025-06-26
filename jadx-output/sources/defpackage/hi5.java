package defpackage;

import android.os.Build;
import defpackage.ii5;

/* loaded from: classes.dex */
public class hi5 implements ii5.g {
    public final /* synthetic */ boolean a;

    public hi5(ii5 ii5Var, String str, String str2, boolean z) {
        this.a = z;
    }

    @Override // ii5.g
    public void a(rl5 rl5Var) throws Exception {
        String str = Build.VERSION.RELEASE;
        String str2 = Build.VERSION.CODENAME;
        boolean z = this.a;
        pl5 pl5Var = sl5.a;
        pl5 pl5VarA = pl5.a(str);
        pl5 pl5VarA2 = pl5.a(str2);
        rl5Var.r(8, 2);
        rl5Var.p(rl5.a(4, z) + rl5.b(3, pl5VarA2) + rl5.b(2, pl5VarA) + rl5.c(1, 3) + 0);
        rl5Var.n(1, 3);
        rl5Var.m(2, pl5VarA);
        rl5Var.m(3, pl5VarA2);
        rl5Var.l(4, z);
    }
}
