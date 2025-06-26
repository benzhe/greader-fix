package defpackage;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public class g96 extends j96 {
    public final p96 c;
    public final p96 d;
    public final String e;
    public final b96 f;
    public final b96 g;
    public final h96 h;
    public final h96 i;

    public g96(f96 f96Var, p96 p96Var, p96 p96Var2, h96 h96Var, h96 h96Var2, String str, b96 b96Var, b96 b96Var2, Map map, a aVar) {
        super(f96Var, MessageType.CARD, map);
        this.c = p96Var;
        this.d = p96Var2;
        this.h = h96Var;
        this.i = h96Var2;
        this.e = str;
        this.f = b96Var;
        this.g = b96Var2;
    }

    @Override // defpackage.j96
    @Deprecated
    public h96 a() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g96)) {
            return false;
        }
        g96 g96Var = (g96) obj;
        if (hashCode() != g96Var.hashCode()) {
            return false;
        }
        p96 p96Var = this.d;
        if ((p96Var == null && g96Var.d != null) || (p96Var != null && !p96Var.equals(g96Var.d))) {
            return false;
        }
        b96 b96Var = this.g;
        if ((b96Var == null && g96Var.g != null) || (b96Var != null && !b96Var.equals(g96Var.g))) {
            return false;
        }
        h96 h96Var = this.h;
        if ((h96Var == null && g96Var.h != null) || (h96Var != null && !h96Var.equals(g96Var.h))) {
            return false;
        }
        h96 h96Var2 = this.i;
        return (h96Var2 != null || g96Var.i == null) && (h96Var2 == null || h96Var2.equals(g96Var.i)) && this.c.equals(g96Var.c) && this.f.equals(g96Var.f) && this.e.equals(g96Var.e);
    }

    public int hashCode() {
        p96 p96Var = this.d;
        int iHashCode = p96Var != null ? p96Var.hashCode() : 0;
        b96 b96Var = this.g;
        int iHashCode2 = b96Var != null ? b96Var.hashCode() : 0;
        h96 h96Var = this.h;
        int iHashCode3 = h96Var != null ? h96Var.hashCode() : 0;
        h96 h96Var2 = this.i;
        return this.f.hashCode() + this.e.hashCode() + this.c.hashCode() + iHashCode + iHashCode2 + iHashCode3 + (h96Var2 != null ? h96Var2.hashCode() : 0);
    }
}
