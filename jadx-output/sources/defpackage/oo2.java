package defpackage;

import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX WARN: Field signature parse error: a
jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: TE at position 1 ('E'), unexpected: T
	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
	at jadx.core.dex.visitors.SignatureProcessor.parseFieldSignature(SignatureProcessor.java:161)
	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:37)
 */
/* loaded from: classes.dex */
public final class oo2 {
    public final Object a;
    public final /* synthetic */ ko2 b;

    public oo2(ko2 ko2Var, Object obj, no2 no2Var) {
        this.b = ko2Var;
        this.a = obj;
    }

    public final <O> qo2<O> a(Callable<O> callable, zv2 zv2Var) {
        return new qo2<>(this.b, this.a, ko2.d, Collections.emptyList(), zv2Var.y(callable));
    }

    public final <O> qo2<O> b(aw2<O> aw2Var) {
        return new qo2<>(this.b, this.a, ko2.d, Collections.emptyList(), aw2Var);
    }
}
