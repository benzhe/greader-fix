package defpackage;

import defpackage.nt;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class jt extends nt {
    public final dv a;
    public final Map<wq, nt.a> b;

    public jt(dv dvVar, Map<wq, nt.a> map) {
        Objects.requireNonNull(dvVar, "Null clock");
        this.a = dvVar;
        Objects.requireNonNull(map, "Null values");
        this.b = map;
    }

    @Override // defpackage.nt
    public dv a() {
        return this.a;
    }

    @Override // defpackage.nt
    public Map<wq, nt.a> c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nt)) {
            return false;
        }
        nt ntVar = (nt) obj;
        return this.a.equals(ntVar.a()) && this.b.equals(ntVar.c());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("SchedulerConfig{clock=");
        sbZ.append(this.a);
        sbZ.append(", values=");
        sbZ.append(this.b);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
