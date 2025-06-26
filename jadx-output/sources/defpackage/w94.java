package defpackage;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class w94 implements oa4 {
    public static final ca4 b = new u94();
    public final ca4 a;

    public w94() {
        ca4 ca4Var;
        ca4[] ca4VarArr = new ca4[2];
        ca4VarArr[0] = y84.a;
        try {
            ca4Var = (ca4) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            ca4Var = b;
        }
        ca4VarArr[1] = ca4Var;
        v94 v94Var = new v94(ca4VarArr);
        Charset charset = j94.a;
        this.a = v94Var;
    }
}
