package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class au extends du {
    public final long b;
    public final int c;
    public final int d;
    public final long e;
    public final int f;

    public au(long j, int i, int i2, long j2, int i3, a aVar) {
        this.b = j;
        this.c = i;
        this.d = i2;
        this.e = j2;
        this.f = i3;
    }

    @Override // defpackage.du
    public int a() {
        return this.d;
    }

    @Override // defpackage.du
    public long b() {
        return this.e;
    }

    @Override // defpackage.du
    public int c() {
        return this.c;
    }

    @Override // defpackage.du
    public int d() {
        return this.f;
    }

    @Override // defpackage.du
    public long e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof du)) {
            return false;
        }
        du duVar = (du) obj;
        return this.b == duVar.e() && this.c == duVar.c() && this.d == duVar.a() && this.e == duVar.b() && this.f == duVar.d();
    }

    public int hashCode() {
        long j = this.b;
        int i = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.c) * 1000003) ^ this.d) * 1000003;
        long j2 = this.e;
        return this.f ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("EventStoreConfig{maxStorageSizeInBytes=");
        sbZ.append(this.b);
        sbZ.append(", loadBatchSize=");
        sbZ.append(this.c);
        sbZ.append(", criticalSectionEnterTimeoutMs=");
        sbZ.append(this.d);
        sbZ.append(", eventCleanUpAge=");
        sbZ.append(this.e);
        sbZ.append(", maxBlobByteSizePerRow=");
        return jo.q(sbZ, this.f, StringSubstitutor.DEFAULT_VAR_END);
    }
}
