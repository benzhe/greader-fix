package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class kc implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ ArrayList f;
    public final /* synthetic */ ArrayList g;
    public final /* synthetic */ ArrayList h;
    public final /* synthetic */ ArrayList i;

    public kc(nc ncVar, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.e = i;
        this.f = arrayList;
        this.g = arrayList2;
        this.h = arrayList3;
        this.i = arrayList4;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (int i = 0; i < this.e; i++) {
            View view = (View) this.f.get(i);
            String str = (String) this.g.get(i);
            AtomicInteger atomicInteger = ha.a;
            view.setTransitionName(str);
            ((View) this.h.get(i)).setTransitionName((String) this.i.get(i));
        }
    }
}
