package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class h47 {
    public static final Iterable<Class<?>> a;
    public static final h47 b;

    public class a implements w47<h47> {
        @Override // defpackage.w47
        public boolean a(h47 h47Var) {
            return h47Var.b();
        }

        @Override // defpackage.w47
        public int b(h47 h47Var) {
            return h47Var.c();
        }
    }

    public static final class b implements Iterable<Class<?>> {
        public b(a aVar) {
        }

        @Override // java.lang.Iterable
        public Iterator<Class<?>> iterator() {
            ArrayList arrayList = new ArrayList();
            try {
                arrayList.add(Class.forName("n97"));
            } catch (ClassNotFoundException unused) {
            }
            try {
                arrayList.add(Class.forName("io.grpc.netty.NettyChannelProvider"));
            } catch (ClassNotFoundException unused2) {
            }
            return arrayList.iterator();
        }
    }

    public static final class c extends RuntimeException {
        public c(String str) {
            super(str);
        }
    }

    static {
        b bVar = new b(null);
        a = bVar;
        List listS1 = n56.s1(h47.class, bVar, h47.class.getClassLoader(), new a());
        b = (h47) (listS1.isEmpty() ? null : listS1.get(0));
    }

    public abstract g47<?> a(String str);

    public abstract boolean b();

    public abstract int c();
}
