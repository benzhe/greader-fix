package defpackage;

import android.text.TextUtils;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class bk {
    public final yj a(ck ckVar) {
        List listSingletonList = Collections.singletonList(ckVar);
        nk nkVar = (nk) this;
        if (listSingletonList.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        kk kkVar = new kk(nkVar, listSingletonList);
        if (kkVar.h) {
            vj.c().f(kk.j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", kkVar.e)), new Throwable[0]);
        } else {
            mm mmVar = new mm(kkVar);
            ((ym) kkVar.a.d).a.execute(mmVar);
            kkVar.i = mmVar.f;
        }
        return kkVar.i;
    }
}
