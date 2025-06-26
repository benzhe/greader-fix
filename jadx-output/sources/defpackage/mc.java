package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class mc implements Runnable {
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ Map f;

    public mc(nc ncVar, ArrayList arrayList, Map map) {
        this.e = arrayList;
        this.f = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.e.get(i);
            AtomicInteger atomicInteger = ha.a;
            view.setTransitionName((String) this.f.get(view.getTransitionName()));
        }
    }
}
