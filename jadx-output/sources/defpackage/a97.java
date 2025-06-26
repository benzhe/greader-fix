package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class a97 {
    public static final a97 c = new a97(new a57[0]);
    public final a57[] a;
    public final AtomicBoolean b = new AtomicBoolean(false);

    public a97(a57[] a57VarArr) {
        this.a = a57VarArr;
    }

    public void a(long j) {
        for (a57 a57Var : this.a) {
            Objects.requireNonNull(a57Var);
        }
    }
}
