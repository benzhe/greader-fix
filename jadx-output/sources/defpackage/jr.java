package defpackage;

import defpackage.pr;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class jr extends pr {
    public final pr.a a;
    public final fr b;

    public jr(pr.a aVar, fr frVar, a aVar2) {
        this.a = aVar;
        this.b = frVar;
    }

    @Override // defpackage.pr
    public fr a() {
        return this.b;
    }

    @Override // defpackage.pr
    public pr.a b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof pr)) {
            return false;
        }
        pr prVar = (pr) obj;
        pr.a aVar = this.a;
        if (aVar != null ? aVar.equals(prVar.b()) : prVar.b() == null) {
            fr frVar = this.b;
            if (frVar == null) {
                if (prVar.a() == null) {
                    return true;
                }
            } else if (frVar.equals(prVar.a())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        pr.a aVar = this.a;
        int iHashCode = ((aVar == null ? 0 : aVar.hashCode()) ^ 1000003) * 1000003;
        fr frVar = this.b;
        return iHashCode ^ (frVar != null ? frVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("ClientInfo{clientType=");
        sbZ.append(this.a);
        sbZ.append(", androidClientInfo=");
        sbZ.append(this.b);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
