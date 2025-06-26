package defpackage;

import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class tq<T> extends vq<T> {
    public final T a;
    public final wq b;

    public tq(Integer num, T t, wq wqVar) {
        Objects.requireNonNull(t, "Null payload");
        this.a = t;
        this.b = wqVar;
    }

    @Override // defpackage.vq
    public Integer a() {
        return null;
    }

    @Override // defpackage.vq
    public T b() {
        return this.a;
    }

    @Override // defpackage.vq
    public wq c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof vq)) {
            return false;
        }
        vq vqVar = (vq) obj;
        return vqVar.a() == null && this.a.equals(vqVar.b()) && this.b.equals(vqVar.c());
    }

    public int hashCode() {
        return this.b.hashCode() ^ (((-721379959) ^ this.a.hashCode()) * 1000003);
    }

    public String toString() {
        return "Event{code=" + ((Object) null) + ", payload=" + this.a + ", priority=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}
