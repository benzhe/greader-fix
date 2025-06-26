package defpackage;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class jg5 extends kg5 {
    public final List<sf5<?>> e;

    /* JADX WARN: Illegal instructions before constructor call */
    public jg5(List<sf5<?>> list) {
        StringBuilder sbZ = jo.z("Dependency cycle detected: ");
        sbZ.append(Arrays.toString(list.toArray()));
        super(sbZ.toString());
        this.e = list;
    }
}
