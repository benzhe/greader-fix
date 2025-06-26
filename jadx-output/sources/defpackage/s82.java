package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final /* synthetic */ class s82 implements cv2 {
    public static final cv2 a = new s82();

    @Override // defpackage.cv2
    public final aw2 a(Object obj) {
        final String str = (String) obj;
        return vt2.j(new nd2(str) { // from class: v82
            public final String a;

            {
                this.a = str;
            }

            @Override // defpackage.nd2
            public final void b(Object obj2) {
                ((Bundle) obj2).putString("ms", this.a);
            }
        });
    }
}
