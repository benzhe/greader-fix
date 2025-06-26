package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class ld5 {
    public final String a;

    public ld5(String str) {
        Objects.requireNonNull(str);
        this.a = str;
    }

    public <A extends Appendable> A a(A a, Iterator<?> it) throws IOException {
        Objects.requireNonNull(a);
        if (it.hasNext()) {
            Object next = it.next();
            Objects.requireNonNull(next);
            a.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
            while (it.hasNext()) {
                a.append(this.a);
                Object next2 = it.next();
                Objects.requireNonNull(next2);
                a.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
            }
        }
        return a;
    }
}
