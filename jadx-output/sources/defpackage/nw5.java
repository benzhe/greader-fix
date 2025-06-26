package defpackage;

import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class nw5 {
    public final ju5 a;
    public final Map<Integer, vw5> b;
    public final Set<Integer> c;
    public final Map<bu5, fu5> d;
    public final Set<bu5> e;

    public nw5(ju5 ju5Var, Map<Integer, vw5> map, Set<Integer> set, Map<bu5, fu5> map2, Set<bu5> set2) {
        this.a = ju5Var;
        this.b = map;
        this.c = set;
        this.d = map2;
        this.e = set2;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("RemoteEvent{snapshotVersion=");
        sbZ.append(this.a);
        sbZ.append(", targetChanges=");
        sbZ.append(this.b);
        sbZ.append(", targetMismatches=");
        sbZ.append(this.c);
        sbZ.append(", documentUpdates=");
        sbZ.append(this.d);
        sbZ.append(", resolvedLimboDocuments=");
        sbZ.append(this.e);
        sbZ.append('}');
        return sbZ.toString();
    }
}
