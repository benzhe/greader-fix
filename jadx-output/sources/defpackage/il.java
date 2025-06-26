package defpackage;

import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public class il extends hl<cl> {
    public il(Context context, xm xmVar) {
        super(tl.a(context, xmVar).c);
    }

    @Override // defpackage.hl
    public boolean b(dm dmVar) {
        return dmVar.j.a == wj.CONNECTED;
    }

    @Override // defpackage.hl
    public boolean c(cl clVar) {
        cl clVar2 = clVar;
        return Build.VERSION.SDK_INT >= 26 ? (clVar2.a && clVar2.b) ? false : true : true ^ clVar2.a;
    }
}
