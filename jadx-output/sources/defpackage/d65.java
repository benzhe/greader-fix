package defpackage;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;
import defpackage.ua;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class d65 implements ua {
    public final /* synthetic */ SwipeDismissBehavior a;

    public d65(SwipeDismissBehavior swipeDismissBehavior) {
        this.a = swipeDismissBehavior;
    }

    @Override // defpackage.ua
    public boolean a(View view, ua.a aVar) {
        boolean z = false;
        if (!this.a.B(view)) {
            return false;
        }
        AtomicInteger atomicInteger = ha.a;
        boolean z2 = view.getLayoutDirection() == 1;
        int i = this.a.d;
        if ((i == 0 && z2) || (i == 1 && !z2)) {
            z = true;
        }
        int width = view.getWidth();
        if (z) {
            width = -width;
        }
        ha.l(view, width);
        view.setAlpha(0.0f);
        SwipeDismissBehavior.b bVar = this.a.b;
        if (bVar != null) {
            ((jb5) bVar).a(view);
        }
        return true;
    }
}
