package defpackage;

import pl.droidsonroids.gif.GifInfoHandle;

/* loaded from: classes2.dex */
public class q78 extends z78 {
    public final /* synthetic */ r78 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q78(r78 r78Var, r78 r78Var2) {
        super(r78Var2);
        this.f = r78Var;
    }

    @Override // defpackage.z78
    public void a() {
        boolean zReset;
        GifInfoHandle gifInfoHandle = this.f.k;
        synchronized (gifInfoHandle) {
            zReset = GifInfoHandle.reset(gifInfoHandle.a);
        }
        if (zReset) {
            this.f.start();
        }
    }
}
