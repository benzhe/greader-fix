package defpackage;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

@Deprecated
/* loaded from: classes.dex */
public final class za {
    public OverScroller a;

    public za(Context context, Interpolator interpolator) {
        this.a = interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
    }
}
