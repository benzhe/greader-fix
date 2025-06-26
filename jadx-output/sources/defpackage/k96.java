package defpackage;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public class k96 extends j96 {
    public final p96 c;
    public final p96 d;
    public final h96 e;
    public final b96 f;
    public final String g;

    public k96(f96 f96Var, p96 p96Var, p96 p96Var2, h96 h96Var, b96 b96Var, String str, Map map, a aVar) {
        super(f96Var, MessageType.MODAL, map);
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
        if (!(obj instanceof k96)) {
            return false;
        }
        k96 k96Var = (k96) obj;
        if (hashCode() != k96Var.hashCode()) {
            return false;
        }
        p96 p96Var = this.d;
        if ((p96Var == null && k96Var.d != null) || (p96Var != null && !p96Var.equals(k96Var.d))) {
            return false;
        }
        b96 b96Var = this.f;
        if ((b96Var == null && k96Var.f != null) || (b96Var != null && !b96Var.equals(k96Var.f))) {
            return false;
        }
        h96 h96Var = this.e;
        return (h96Var != null || k96Var.e == null) && (h96Var == null || h96Var.equals(k96Var.e)) && this.c.equals(k96Var.c) && this.g.equals(k96Var.g);
    }

    public int hashCode() {
        p96 p96Var = this.d;
        int iHashCode = p96Var != null ? p96Var.hashCode() : 0;
        b96 b96Var = this.f;
        int iHashCode2 = b96Var != null ? b96Var.hashCode() : 0;
        h96 h96Var = this.e;
        return this.g.hashCode() + this.c.hashCode() + iHashCode + iHashCode2 + (h96Var != null ? h96Var.hashCode() : 0);
    }
}
