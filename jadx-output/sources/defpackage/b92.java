package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class b92 implements qd2<nd2<Bundle>> {
    public final Set<String> a;

    public b92(Set<String> set) {
        this.a = set;
    }

    @Override // defpackage.qd2
    public final aw2<nd2<Bundle>> a() {
        final ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.a.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return vt2.j(new nd2(arrayList) { // from class: a92
            public final ArrayList a;

            {
                this.a = arrayList;
            }

            @Override // defpackage.nd2
            public final void b(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.a);
            }
        });
    }
}
