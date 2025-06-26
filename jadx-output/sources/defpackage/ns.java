package defpackage;

import android.content.Context;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ns extends ss {
    public final Context a;
    public final dv b;
    public final dv c;
    public final String d;

    public ns(Context context, dv dvVar, dv dvVar2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.a = context;
        Objects.requireNonNull(dvVar, "Null wallClock");
        this.b = dvVar;
        Objects.requireNonNull(dvVar2, "Null monotonicClock");
        this.c = dvVar2;
        Objects.requireNonNull(str, "Null backendName");
        this.d = str;
    }

    @Override // defpackage.ss
    public Context a() {
        return this.a;
    }

    @Override // defpackage.ss
    public String b() {
        return this.d;
    }

    @Override // defpackage.ss
    public dv c() {
        return this.c;
    }

    @Override // defpackage.ss
    public dv d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ss)) {
            return false;
        }
        ss ssVar = (ss) obj;
        return this.a.equals(ssVar.a()) && this.b.equals(ssVar.d()) && this.c.equals(ssVar.c()) && this.d.equals(ssVar.b());
    }

    public int hashCode() {
        return ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("CreationContext{applicationContext=");
        sbZ.append(this.a);
        sbZ.append(", wallClock=");
        sbZ.append(this.b);
        sbZ.append(", monotonicClock=");
        sbZ.append(this.c);
        sbZ.append(", backendName=");
        return jo.s(sbZ, this.d, StringSubstitutor.DEFAULT_VAR_END);
    }
}
