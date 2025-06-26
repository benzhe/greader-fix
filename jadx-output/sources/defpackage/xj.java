package defpackage;

import androidx.work.ListenableWorker;
import androidx.work.OverwritingInputMerger;
import defpackage.ck;

/* loaded from: classes.dex */
public final class xj extends ck {

    public static final class a extends ck.a<a, xj> {
        public a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.b.d = OverwritingInputMerger.class.getName();
        }
    }

    public xj(a aVar) {
        super(aVar.a, aVar.b, aVar.c);
    }
}
