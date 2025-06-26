package defpackage;

import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public class jl extends hl<cl> {
    public static final String e = vj.e("NetworkMeteredCtrlr");

    public jl(Context context, xm xmVar) {
        super(tl.a(context, xmVar).c);
    }

    @Override // defpackage.hl
    public boolean b(dm dmVar) {
        return dmVar.j.a == wj.METERED;
    }

    @Override // defpackage.hl
    public boolean c(cl clVar) {
        cl clVar2 = clVar;
        boolean z = true;
        if (Build.VERSION.SDK_INT < 26) {
            vj.c().a(e, "Metered network constraint is not supported before API 26, only checking for connected state.", new Throwable[0]);
            return !clVar2.a;
        }
        if (clVar2.a && clVar2.c) {
            z = false;
        }
        return z;
    }
}
