package defpackage;

import android.content.ComponentName;

/* loaded from: classes.dex */
public final class c15 implements Runnable {
    public final /* synthetic */ ComponentName e;
    public final /* synthetic */ g15 f;

    public c15(g15 g15Var, ComponentName componentName) {
        this.f = g15Var;
        this.e = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h15.q(this.f.c, this.e);
    }
}
