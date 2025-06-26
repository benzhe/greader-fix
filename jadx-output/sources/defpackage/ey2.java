package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
public final class ey2 implements Runnable {
    public final /* synthetic */ Context e;
    public final /* synthetic */ String f;
    public final /* synthetic */ View g;
    public final /* synthetic */ Activity h;

    public ey2(Context context, String str, View view, Activity activity) {
        this.e = context;
        this.f = str;
        this.g = view;
        this.h = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            lu2.C.zza(this.e, this.f, this.g, this.h);
        } catch (Exception e) {
            lu2.E.b(2021, -1L, e);
        }
    }
}
