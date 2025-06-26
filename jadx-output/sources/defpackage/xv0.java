package defpackage;

import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class xv0 implements Runnable {
    public final /* synthetic */ uv0 e;

    public xv0(uv0 uv0Var) {
        this.e = uv0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        wv0 wv0VarZzlr = zzr.zzlr();
        wv0VarZzlr.e.remove(this.e);
    }
}
