package defpackage;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX WARN: Field signature parse error: a
jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: TE at position 1 ('E'), unexpected: T
	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
	at jadx.core.dex.visitors.SignatureProcessor.parseFieldSignature(SignatureProcessor.java:161)
	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:37)
 */
/* loaded from: classes.dex */
public final class mo2 {
    public final Object a;
    public final List<aw2<?>> b;
    public final /* synthetic */ ko2 c;

    public mo2(ko2 ko2Var, Object obj, List list, no2 no2Var) {
        this.c = ko2Var;
        this.a = obj;
        this.b = list;
    }

    public final <O> qo2<O> a(Callable<O> callable) {
        uv2 uv2VarQ = vt2.q(this.b);
        aw2 aw2VarA = uv2VarQ.a(po2.e, ms0.f);
        ko2 ko2Var = this.c;
        return new qo2<>(ko2Var, this.a, aw2VarA, this.b, uv2VarQ.a(callable, ko2Var.a));
    }
}
