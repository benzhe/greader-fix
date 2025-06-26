package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class t40 {
    public final Collection<o40<?>> a = new ArrayList();
    public final Collection<o40<String>> b = new ArrayList();
    public final Collection<o40<String>> c = new ArrayList();

    public final List<String> a() {
        ArrayList arrayList = new ArrayList();
        Iterator<o40<String>> it = this.b.iterator();
        while (it.hasNext()) {
            String str = (String) os3.j.f.a(it.next());
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        c50.r2(arrayList2, e60.d("gad:dynamite_module:experiment_id", ""));
        c50.r2(arrayList2, p60.a);
        c50.r2(arrayList2, p60.b);
        c50.r2(arrayList2, p60.c);
        c50.r2(arrayList2, p60.d);
        c50.r2(arrayList2, p60.e);
        c50.r2(arrayList2, p60.k);
        c50.r2(arrayList2, p60.f);
        c50.r2(arrayList2, p60.g);
        c50.r2(arrayList2, p60.h);
        c50.r2(arrayList2, p60.i);
        c50.r2(arrayList2, p60.j);
        arrayList.addAll(arrayList2);
        return arrayList;
    }
}
