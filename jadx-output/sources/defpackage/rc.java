package defpackage;

import android.view.View;
import androidx.gridlayout.widget.GridLayout;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class rc extends GridLayout.h {
    public final /* synthetic */ GridLayout.h a;
    public final /* synthetic */ GridLayout.h b;

    public rc(GridLayout.h hVar, GridLayout.h hVar2) {
        this.a = hVar;
        this.b = hVar2;
    }

    @Override // androidx.gridlayout.widget.GridLayout.h
    public int a(View view, int i, int i2) {
        AtomicInteger atomicInteger = ha.a;
        return (!(view.getLayoutDirection() == 1) ? this.a : this.b).a(view, i, i2);
    }

    @Override // androidx.gridlayout.widget.GridLayout.h
    public String c() {
        StringBuilder sbZ = jo.z("SWITCHING[L:");
        sbZ.append(this.a.c());
        sbZ.append(", R:");
        sbZ.append(this.b.c());
        sbZ.append("]");
        return sbZ.toString();
    }

    @Override // androidx.gridlayout.widget.GridLayout.h
    public int d(View view, int i) {
        AtomicInteger atomicInteger = ha.a;
        return (!(view.getLayoutDirection() == 1) ? this.a : this.b).d(view, i);
    }
}
