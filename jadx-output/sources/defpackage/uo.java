package defpackage;

import defpackage.to;
import java.util.Comparator;

/* loaded from: classes.dex */
public class uo implements Comparator<to.b> {
    public uo(to toVar) {
    }

    @Override // java.util.Comparator
    public int compare(to.b bVar, to.b bVar2) {
        int i = bVar.a;
        int i2 = bVar2.a;
        if (i == i2) {
            return 0;
        }
        return i < i2 ? -1 : 1;
    }
}
