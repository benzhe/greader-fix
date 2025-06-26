package defpackage;

import java.util.Arrays;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ls extends qs {
    public final Iterable<as> a;
    public final byte[] b;

    public ls(Iterable iterable, byte[] bArr, a aVar) {
        this.a = iterable;
        this.b = bArr;
    }

    @Override // defpackage.qs
    public Iterable<as> a() {
        return this.a;
    }

    @Override // defpackage.qs
    public byte[] b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qs)) {
            return false;
        }
        qs qsVar = (qs) obj;
        if (this.a.equals(qsVar.a())) {
            if (Arrays.equals(this.b, qsVar instanceof ls ? ((ls) qsVar).b : qsVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("BackendRequest{events=");
        sbZ.append(this.a);
        sbZ.append(", extras=");
        sbZ.append(Arrays.toString(this.b));
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
