package defpackage;

import android.os.Bundle;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class s92 implements vs2 {
    public static final vs2 a = new s92();

    @Override // defpackage.vs2
    public final Object apply(Object obj) {
        final ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new nd2(arrayList) { // from class: r92
            public final ArrayList a;

            {
                this.a = arrayList;
            }

            @Override // defpackage.nd2
            public final void b(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.a);
            }
        };
    }
}
