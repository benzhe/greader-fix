package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzl;

/* loaded from: classes.dex */
public final class gx implements View.OnTouchListener {
    public final /* synthetic */ zzl e;

    public gx(zzl zzlVar) {
        this.e = zzlVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        d23 d23Var = this.e.l;
        if (d23Var == null) {
            return false;
        }
        d23Var.b.zza(motionEvent);
        return false;
    }
}
