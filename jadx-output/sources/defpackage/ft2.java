package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ft2 implements Iterable<String> {
    public final /* synthetic */ CharSequence e;
    public final /* synthetic */ bt2 f;

    public ft2(bt2 bt2Var, CharSequence charSequence) {
        this.f = bt2Var;
        this.e = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        bt2 bt2Var = this.f;
        CharSequence charSequence = this.e;
        dt2 dt2Var = bt2Var.b;
        Objects.requireNonNull(dt2Var);
        return new ct2(dt2Var, bt2Var, charSequence);
    }

    public final String toString() {
        Objects.requireNonNull(", ");
        StringBuilder sb = new StringBuilder("[");
        Iterator<String> it = iterator();
        try {
            if (it.hasNext()) {
                String next = it.next();
                Objects.requireNonNull(next);
                sb.append((CharSequence) (next instanceof CharSequence ? next : next.toString()));
                while (it.hasNext()) {
                    sb.append((CharSequence) ", ");
                    String next2 = it.next();
                    Objects.requireNonNull(next2);
                    sb.append((CharSequence) (next2 instanceof CharSequence ? next2 : next2.toString()));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
