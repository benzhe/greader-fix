package defpackage;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public class i96 extends j96 {
    public h96 c;
    public b96 d;

    public i96(f96 f96Var, h96 h96Var, b96 b96Var, Map map, a aVar) {
        super(f96Var, MessageType.IMAGE_ONLY, map);
        this.c = h96Var;
        this.d = b96Var;
    }

    @Override // defpackage.j96
    public h96 a() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i96)) {
            return false;
        }
        i96 i96Var = (i96) obj;
        if (hashCode() != i96Var.hashCode()) {
            return false;
        }
        b96 b96Var = this.d;
        return (b96Var != null || i96Var.d == null) && (b96Var == null || b96Var.equals(i96Var.d)) && this.c.equals(i96Var.c);
    }

    public int hashCode() {
        b96 b96Var = this.d;
        return this.c.hashCode() + (b96Var != null ? b96Var.hashCode() : 0);
    }
}
