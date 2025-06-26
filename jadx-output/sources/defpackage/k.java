package defpackage;

import defpackage.rk7;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class k {
    public static final yq7 a = new yq7("ZERO");
    public static final tl7<Object, rk7.a, Object> b = b.e;
    public static final tl7<hq7<?>, rk7.a, hq7<?>> c = c.e;
    public static final tl7<cr7, rk7.a, cr7> d = a.g;
    public static final tl7<cr7, rk7.a, cr7> e = a.f;

    /* compiled from: kotlin-style lambda group */
    /* loaded from: classes.dex */
    public static final class a extends jm7 implements tl7<cr7, rk7.a, cr7> {
        public static final a f = new a(0);
        public static final a g = new a(1);
        public final /* synthetic */ int e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i) {
            super(2);
            this.e = i;
        }

        @Override // defpackage.tl7
        public final cr7 b(cr7 cr7Var, rk7.a aVar) {
            int i = this.e;
            if (i == 0) {
                cr7 cr7Var2 = cr7Var;
                rk7.a aVar2 = aVar;
                if (aVar2 instanceof hq7) {
                    rk7 rk7Var = cr7Var2.c;
                    Object[] objArr = cr7Var2.a;
                    int i2 = cr7Var2.b;
                    cr7Var2.b = i2 + 1;
                    ((hq7) aVar2).k(rk7Var, objArr[i2]);
                }
                return cr7Var2;
            }
            if (i != 1) {
                throw null;
            }
            cr7 cr7Var3 = cr7Var;
            rk7.a aVar3 = aVar;
            if (aVar3 instanceof hq7) {
                Object objQ = ((hq7) aVar3).q(cr7Var3.c);
                Object[] objArr2 = cr7Var3.a;
                int i3 = cr7Var3.b;
                cr7Var3.b = i3 + 1;
                objArr2[i3] = objQ;
            }
            return cr7Var3;
        }
    }

    public static final class b extends jm7 implements tl7<Object, rk7.a, Object> {
        public static final b e = new b();

        public b() {
            super(2);
        }

        @Override // defpackage.tl7
        public Object b(Object obj, rk7.a aVar) {
            rk7.a aVar2 = aVar;
            if (!(aVar2 instanceof hq7)) {
                return obj;
            }
            if (!(obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            int iIntValue = num != null ? num.intValue() : 1;
            return iIntValue == 0 ? aVar2 : Integer.valueOf(iIntValue + 1);
        }
    }

    public static final class c extends jm7 implements tl7<hq7<?>, rk7.a, hq7<?>> {
        public static final c e = new c();

        public c() {
            super(2);
        }

        @Override // defpackage.tl7
        public hq7<?> b(hq7<?> hq7Var, rk7.a aVar) {
            hq7<?> hq7Var2 = hq7Var;
            rk7.a aVar2 = aVar;
            if (hq7Var2 != null) {
                return hq7Var2;
            }
            if (!(aVar2 instanceof hq7)) {
                aVar2 = null;
            }
            return (hq7) aVar2;
        }
    }

    public static final void a(rk7 rk7Var, Object obj) {
        if (obj == a) {
            return;
        }
        if (obj instanceof cr7) {
            ((cr7) obj).b = 0;
            rk7Var.m(obj, e);
        } else {
            Object objM = rk7Var.m(null, c);
            Objects.requireNonNull(objM, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            ((hq7) objM).k(rk7Var, obj);
        }
    }

    public static final Object b(rk7 rk7Var, Object obj) {
        if (obj == null) {
            obj = rk7Var.m(0, b);
            im7.c(obj);
        }
        return obj == 0 ? a : obj instanceof Integer ? rk7Var.m(new cr7(rk7Var, ((Number) obj).intValue()), d) : ((hq7) obj).q(rk7Var);
    }
}
