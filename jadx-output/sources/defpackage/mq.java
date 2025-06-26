package defpackage;

/* loaded from: classes.dex */
public abstract class mq extends Exception {

    public static final class a extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class b extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class c extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class d extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class e extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class f extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class g extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class h extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class i extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class j extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    public static final class k extends mq {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(in inVar) {
            super(inVar, null);
            im7.e(inVar, "result");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public mq(in inVar, gm7 gm7Var) {
        StringBuilder sbZ = jo.z("Billing error, code ");
        sbZ.append(inVar.a);
        sbZ.append('\n');
        sbZ.append(inVar.b);
        super(sbZ.toString());
    }

    public static final mq a(in inVar) {
        im7.e(inVar, "result");
        switch (inVar.a) {
            case -2:
                return new e(inVar);
            case -1:
                return new h(inVar);
            case 0:
            default:
                return new j(inVar);
            case 1:
                return new k(inVar);
            case 2:
                return new i(inVar);
            case 3:
                return new b(inVar);
            case 4:
                return new f(inVar);
            case 5:
                return new c(inVar);
            case 6:
                return new d(inVar);
            case 7:
                return new a(inVar);
            case 8:
                return new g(inVar);
        }
    }
}
