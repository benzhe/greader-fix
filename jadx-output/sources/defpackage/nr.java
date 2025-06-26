package defpackage;

import defpackage.tr;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class nr extends tr {
    public final tr.b a;
    public final tr.a b;

    public nr(tr.b bVar, tr.a aVar, a aVar2) {
        this.a = bVar;
        this.b = aVar;
    }

    @Override // defpackage.tr
    public tr.a a() {
        return this.b;
    }

    @Override // defpackage.tr
    public tr.b b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tr)) {
            return false;
        }
        tr trVar = (tr) obj;
        tr.b bVar = this.a;
        if (bVar != null ? bVar.equals(trVar.b()) : trVar.b() == null) {
            tr.a aVar = this.b;
            if (aVar == null) {
                if (trVar.a() == null) {
                    return true;
                }
            } else if (aVar.equals(trVar.a())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        tr.b bVar = this.a;
        int iHashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        tr.a aVar = this.b;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("NetworkConnectionInfo{networkType=");
        sbZ.append(this.a);
        sbZ.append(", mobileSubtype=");
        sbZ.append(this.b);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
