package defpackage;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class nl4 implements nm4 {
    public static final xl4 b = new ql4();
    public final xl4 a;

    public nl4() {
        xl4 xl4Var;
        xl4[] xl4VarArr = new xl4[2];
        xl4VarArr[0] = qk4.a;
        try {
            xl4Var = (xl4) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            xl4Var = b;
        }
        xl4VarArr[1] = xl4Var;
        pl4 pl4Var = new pl4(xl4VarArr);
        Charset charset = rk4.a;
        this.a = pl4Var;
    }
}
