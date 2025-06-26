package defpackage;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class sj6 implements rk6 {
    public static final zj6 b = new a();
    public final zj6 a;

    public static class a implements zj6 {
        @Override // defpackage.zj6
        public yj6 a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // defpackage.zj6
        public boolean b(Class<?> cls) {
            return false;
        }
    }

    public static class b implements zj6 {
        public zj6[] a;

        public b(zj6... zj6VarArr) {
            this.a = zj6VarArr;
        }

        @Override // defpackage.zj6
        public yj6 a(Class<?> cls) {
            for (zj6 zj6Var : this.a) {
                if (zj6Var.b(cls)) {
                    return zj6Var.a(cls);
                }
            }
            StringBuilder sbZ = jo.z("No factory is available for message type: ");
            sbZ.append(cls.getName());
            throw new UnsupportedOperationException(sbZ.toString());
        }

        @Override // defpackage.zj6
        public boolean b(Class<?> cls) {
            for (zj6 zj6Var : this.a) {
                if (zj6Var.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public sj6() {
        zj6 zj6Var;
        zj6[] zj6VarArr = new zj6[2];
        zj6VarArr[0] = fj6.a;
        try {
            zj6Var = (zj6) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zj6Var = b;
        }
        zj6VarArr[1] = zj6Var;
        b bVar = new b(zj6VarArr);
        Charset charset = jj6.a;
        this.a = bVar;
    }
}
