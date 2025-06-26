package defpackage;

import java.lang.reflect.Type;
import java.util.Map;

/* loaded from: classes.dex */
public final class ne6 {
    public final Map<Type, pd6<?>> a;
    public final bg6 b = bg6.a;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> implements af6<T> {
        public final /* synthetic */ pd6 a;
        public final /* synthetic */ Type b;

        public a(ne6 ne6Var, pd6 pd6Var, Type type) {
            this.a = pd6Var;
            this.b = type;
        }

        @Override // defpackage.af6
        public T a() {
            return (T) this.a.a(this.b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class b<T> implements af6<T> {
        public final /* synthetic */ pd6 a;
        public final /* synthetic */ Type b;

        public b(ne6 ne6Var, pd6 pd6Var, Type type) {
            this.a = pd6Var;
            this.b = type;
        }

        @Override // defpackage.af6
        public T a() {
            return (T) this.a.a(this.b);
        }
    }

    public ne6(Map<Type, pd6<?>> map) {
        this.a = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> defpackage.af6<T> a(defpackage.dg6<T> r6) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ne6.a(dg6):af6");
    }

    public String toString() {
        return this.a.toString();
    }
}
