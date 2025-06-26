package defpackage;

import android.os.Handler;
import defpackage.xy;

/* loaded from: classes.dex */
public final class jz implements xy.a {
    public final /* synthetic */ zy a;

    public jz(zy zyVar) {
        this.a = zyVar;
    }

    @Override // xy.a
    public final void a(boolean z) {
        Handler handler = this.a.n;
        handler.sendMessage(handler.obtainMessage(1, Boolean.valueOf(z)));
    }
}
