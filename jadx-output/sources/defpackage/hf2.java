package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class hf2 implements qd2<if2> {
    public m40 a;
    public zv2 b;
    public List<String> c;

    public hf2(m40 m40Var, zv2 zv2Var, List<String> list) {
        this.a = m40Var;
        this.b = zv2Var;
        this.c = list;
    }

    @Override // defpackage.qd2
    public final aw2<if2> a() {
        return this.b.y(new Callable(this) { // from class: kf2
            public final hf2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                hf2 hf2Var = this.e;
                m40 m40Var = hf2Var.a;
                List<String> listEmptyList = hf2Var.c;
                Objects.requireNonNull(m40Var);
                if (listEmptyList == null) {
                    listEmptyList = Collections.emptyList();
                }
                return new if2(listEmptyList);
            }
        });
    }
}
