package defpackage;

import defpackage.tk5;
import java.util.Arrays;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ck5 extends tk5.c.a {
    public final String a;
    public final byte[] b;

    public ck5(String str, byte[] bArr, a aVar) {
        this.a = str;
        this.b = bArr;
    }

    @Override // tk5.c.a
    public byte[] a() {
        return this.b;
    }

    @Override // tk5.c.a
    public String b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.c.a)) {
            return false;
        }
        tk5.c.a aVar = (tk5.c.a) obj;
        if (this.a.equals(aVar.b())) {
            if (Arrays.equals(this.b, aVar instanceof ck5 ? ((ck5) aVar).b : aVar.a())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("File{filename=");
        sbZ.append(this.a);
        sbZ.append(", contents=");
        sbZ.append(Arrays.toString(this.b));
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
