package defpackage;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public class d96 extends j96 {
    public final p96 c;
    public final p96 d;
    public final h96 e;
    public final b96 f;
    public final String g;

    public d96(f96 f96Var, p96 p96Var, p96 p96Var2, h96 h96Var, b96 b96Var, String str, Map map, a aVar) {
        super(f96Var, MessageType.BANNER, map);
        this.c = p96Var;
        this.d = p96Var2;
        this.e = h96Var;
        this.f = b96Var;
        this.g = str;
    }

    @Override // defpackage.j96
    public h96 a() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d96)) {
            return false;
        }
        d96 d96Var = (d96) obj;
        if (hashCode() != d96Var.hashCode()) {
            return false;
        }
        p96 p96Var = this.d;
        if ((p96Var == null && d96Var.d != null) || (p96Var != null && !p96Var.equals(d96Var.d))) {
            return false;
        }
        h96 h96Var = this.e;
        if ((h96Var == null && d96Var.e != null) || (h96Var != null && !h96Var.equals(d96Var.e))) {
            return false;
        }
        b96 b96Var = this.f;
        return (b96Var != null || d96Var.f == null) && (b96Var == null || b96Var.equals(d96Var.f)) && this.c.equals(d96Var.c) && this.g.equals(d96Var.g);
    }

    public int hashCode() {
        p96 p96Var = this.d;
        int iHashCode = p96Var != null ? p96Var.hashCode() : 0;
        h96 h96Var = this.e;
        int iHashCode2 = h96Var != null ? h96Var.hashCode() : 0;
        b96 b96Var = this.f;
        return this.g.hashCode() + this.c.hashCode() + iHashCode + iHashCode2 + (b96Var != null ? b96Var.hashCode() : 0);
    }
}
