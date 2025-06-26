package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
public final class kv2 implements Runnable {
    public final /* synthetic */ Context e;
    public final /* synthetic */ View f;
    public final /* synthetic */ Activity g;

    public kv2(Context context, View view, Activity activity) {
        this.e = context;
        this.f = view;
        this.g = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            lu2.C.zza(this.e, this.f, this.g);
        } catch (Exception e) {
            lu2.E.b(2020, -1L, e);
        }
    }
}
