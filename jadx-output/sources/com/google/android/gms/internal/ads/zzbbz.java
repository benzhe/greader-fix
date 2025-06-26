package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
import defpackage.ju0;
import defpackage.lu0;
import defpackage.rt0;
import defpackage.zt0;

/* loaded from: classes.dex */
public abstract class zzbbz extends TextureView implements lu0 {
    public final zt0 e;
    public final ju0 f;

    public zzbbz(Context context) {
        super(context);
        this.e = new zt0();
        this.f = new ju0(context, this);
    }

    public abstract void a();

    public abstract void e();

    public abstract void f();

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract long getTotalBytes();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void h(int i);

    public abstract void j();

    public abstract void k(float f, float f2);

    public abstract void l(rt0 rt0Var);

    public abstract String m();

    public abstract long n();

    public abstract int o();

    public void p(String str, String[] strArr) {
        setVideoPath(str);
    }

    public void q(int i) {
    }

    public void r(int i) {
    }

    public void s(int i) {
    }

    public abstract void setVideoPath(String str);

    public void t(int i) {
    }

    public void u(int i) {
    }

    public abstract long v();
}
