package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class lc implements Runnable {
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ Map f;

    public lc(nc ncVar, ArrayList arrayList, Map map) {
        this.e = arrayList;
        this.f = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.e.get(i);
            AtomicInteger atomicInteger = ha.a;
            String transitionName = view.getTransitionName();
            if (transitionName != null) {
                Iterator it = this.f.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (transitionName.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                view.setTransitionName(str);
            }
        }
    }
}
