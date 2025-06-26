package defpackage;

import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class z06 implements jj7<Map<String, jj7<f06>>> {
    public final e16 a;

    public z06(e16 e16Var) {
        this.a = e16Var;
    }

    @Override // defpackage.jj7
    public Map<String, jj7<f06>> get() {
        Map<String, jj7<f06>> mapC = this.a.c();
        Objects.requireNonNull(mapC, "Cannot return null from a non-@Nullable component method");
        return mapC;
    }
}
