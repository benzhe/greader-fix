package defpackage;

import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class bu extends hu {
    public final long a;
    public final ds b;
    public final as c;

    public bu(long j, ds dsVar, as asVar) {
        this.a = j;
        Objects.requireNonNull(dsVar, "Null transportContext");
        this.b = dsVar;
        Objects.requireNonNull(asVar, "Null event");
        this.c = asVar;
    }

    @Override // defpackage.hu
    public as a() {
        return this.c;
    }

    @Override // defpackage.hu
    public long b() {
        return this.a;
    }

    @Override // defpackage.hu
    public ds c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hu)) {
            return false;
        }
        hu huVar = (hu) obj;
        return this.a == huVar.b() && this.b.equals(huVar.c()) && this.c.equals(huVar.a());
    }

    public int hashCode() {
        long j = this.a;
        return this.c.hashCode() ^ ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("PersistedEvent{id=");
        sbZ.append(this.a);
        sbZ.append(", transportContext=");
        sbZ.append(this.b);
        sbZ.append(", event=");
        sbZ.append(this.c);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
