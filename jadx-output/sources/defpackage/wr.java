package defpackage;

import defpackage.ds;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class wr extends ds {
    public final String a;
    public final byte[] b;
    public final wq c;

    public static final class b extends ds.a {
        public String a;
        public byte[] b;
        public wq c;

        @Override // ds.a
        public ds a() {
            String strN = this.a == null ? " backendName" : "";
            if (this.c == null) {
                strN = jo.n(strN, " priority");
            }
            if (strN.isEmpty()) {
                return new wr(this.a, this.b, this.c, null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }

        @Override // ds.a
        public ds.a b(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.a = str;
            return this;
        }

        @Override // ds.a
        public ds.a c(wq wqVar) {
            Objects.requireNonNull(wqVar, "Null priority");
            this.c = wqVar;
            return this;
        }
    }

    public wr(String str, byte[] bArr, wq wqVar, a aVar) {
        this.a = str;
        this.b = bArr;
        this.c = wqVar;
    }

    @Override // defpackage.ds
    public String b() {
        return this.a;
    }

    @Override // defpackage.ds
    public byte[] c() {
        return this.b;
    }

    @Override // defpackage.ds
    public wq d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ds)) {
            return false;
        }
        ds dsVar = (ds) obj;
        if (this.a.equals(dsVar.b())) {
            if (Arrays.equals(this.b, dsVar instanceof wr ? ((wr) dsVar).b : dsVar.c()) && this.c.equals(dsVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003) ^ this.c.hashCode();
    }
}
