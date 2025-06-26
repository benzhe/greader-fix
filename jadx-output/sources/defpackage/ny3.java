package defpackage;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class ny3 implements oz3 {
    public static final wy3 b = new oy3();
    public final wy3 a;

    public ny3() {
        wy3 wy3Var;
        wy3[] wy3VarArr = new wy3[2];
        wy3VarArr[0] = rx3.a;
        try {
            wy3Var = (wy3) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            wy3Var = b;
        }
        wy3VarArr[1] = wy3Var;
        py3 py3Var = new py3(wy3VarArr);
        Charset charset = ux3.a;
        this.a = py3Var;
    }

    @Override // defpackage.oz3
    public final <T> nz3<T> a(Class<T> cls) {
        dz3 dz3Var;
        iy3 iy3Var;
        b04<?, ?> b04Var;
        fx3<?> fx3Var;
        sy3 sy3Var;
        Class<?> cls2;
        Class<?> cls3 = pz3.a;
        if (!sx3.class.isAssignableFrom(cls) && (cls2 = pz3.a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        vy3 vy3VarA = this.a.a(cls);
        boolean zB = vy3VarA.b();
        boolean zIsAssignableFrom = sx3.class.isAssignableFrom(cls);
        if (zB) {
            if (zIsAssignableFrom) {
                b04<?, ?> b04Var2 = pz3.d;
                fx3<?> fx3Var2 = ix3.a;
                return new bz3(b04Var2, ix3.a, vy3VarA.c());
            }
            b04<?, ?> b04Var3 = pz3.b;
            fx3<?> fx3Var3 = ix3.b;
            if (fx3Var3 != null) {
                return new bz3(b04Var3, fx3Var3, vy3VarA.c());
            }
            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
        }
        if (zIsAssignableFrom) {
            if (vy3VarA.a() == 1) {
                dz3Var = fz3.b;
                iy3Var = iy3.b;
                b04Var = pz3.d;
                fx3<?> fx3Var4 = ix3.a;
                fx3Var = ix3.a;
            } else {
                dz3Var = fz3.b;
                iy3Var = iy3.b;
                b04Var = pz3.d;
                fx3Var = null;
            }
            sy3Var = uy3.b;
        } else {
            if (vy3VarA.a() == 1) {
                dz3 dz3Var2 = fz3.a;
                iy3Var = iy3.a;
                b04Var = pz3.b;
                fx3Var = ix3.b;
                if (fx3Var == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                sy3Var = uy3.a;
                dz3Var = dz3Var2;
            } else {
                dz3Var = fz3.a;
                iy3Var = iy3.a;
                b04Var = pz3.c;
                fx3Var = null;
                sy3Var = uy3.a;
            }
        }
        return az3.q(vy3VarA, dz3Var, iy3Var, b04Var, fx3Var, sy3Var);
    }
}
