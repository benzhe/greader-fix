package defpackage;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzad;

/* loaded from: classes.dex */
public final class vv extends RelativeLayout {
    public zzad e;
    public boolean f;

    public vv(Context context, String str, String str2, String str3) {
        super(context);
        zzad zzadVar = new zzad(context, str);
        this.e = zzadVar;
        zzadVar.zzu(str2);
        this.e.setAdUnitId(str3);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f) {
            return false;
        }
        this.e.zzd(motionEvent);
        return false;
    }
}
