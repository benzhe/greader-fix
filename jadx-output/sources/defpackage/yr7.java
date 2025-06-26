package defpackage;

import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes2.dex */
public class yr7 {
    public final int a;
    public final int b;
    public final int c;
    public final Collection<String> d;

    public yr7(int i, int i2, int i3, Collection collection, int i4) {
        i = (i4 & 1) != 0 ? 0 : i;
        i2 = (i4 & 2) != 0 ? 5 : i2;
        i3 = (i4 & 4) != 0 ? 500 : i3;
        ArrayList arrayList = (i4 & 8) != 0 ? new ArrayList() : null;
        im7.f(arrayList, "additionalClassesToPreserve");
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = arrayList;
    }
}
