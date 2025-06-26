package defpackage;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class s73 implements z83 {
    public static final c83 b = new v73();
    public final c83 a;

    public s73() {
        c83 c83Var;
        c83[] c83VarArr = new c83[2];
        c83VarArr[0] = t63.a;
        try {
            c83Var = (c83) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            c83Var = b;
        }
        c83VarArr[1] = c83Var;
        u73 u73Var = new u73(c83VarArr);
        Charset charset = u63.a;
        this.a = u73Var;
    }
}
