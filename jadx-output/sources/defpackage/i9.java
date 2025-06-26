package defpackage;

import defpackage.j9;
import defpackage.k9;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class i9 implements k9.c<j9.d> {
    public final /* synthetic */ String a;

    public i9(String str) {
        this.a = str;
    }

    @Override // k9.c
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(j9.d dVar) {
        synchronized (j9.c) {
            m4<String, ArrayList<k9.c<j9.d>>> m4Var = j9.d;
            ArrayList<k9.c<j9.d>> arrayList = m4Var.get(this.a);
            if (arrayList == null) {
                return;
            }
            m4Var.remove(this.a);
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList.get(i).a(dVar);
            }
        }
    }
}
