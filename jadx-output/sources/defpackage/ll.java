package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public class ll extends hl<cl> {
    public ll(Context context, xm xmVar) {
        super(tl.a(context, xmVar).c);
    }

    @Override // defpackage.hl
    public boolean b(dm dmVar) {
        return dmVar.j.a == wj.UNMETERED;
    }

    @Override // defpackage.hl
    public boolean c(cl clVar) {
        cl clVar2 = clVar;
        return !clVar2.a || clVar2.c;
    }
}
