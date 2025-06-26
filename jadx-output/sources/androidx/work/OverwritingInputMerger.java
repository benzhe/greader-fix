package androidx.work;

import defpackage.sj;
import defpackage.uj;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class OverwritingInputMerger extends uj {
    @Override // defpackage.uj
    public sj a(List<sj> list) {
        sj.a aVar = new sj.a();
        HashMap map = new HashMap();
        Iterator<sj> it = list.iterator();
        while (it.hasNext()) {
            map.putAll(Collections.unmodifiableMap(it.next().a));
        }
        aVar.b(map);
        return aVar.a();
    }
}
