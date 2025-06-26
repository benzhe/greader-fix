package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class dd6 extends gj6<dd6, b> implements Object {
    public static final int DATABASE_FIELD_NUMBER = 1;
    private static final dd6 DEFAULT_INSTANCE;
    public static final int LABELS_FIELD_NUMBER = 5;
    private static volatile ik6<dd6> PARSER = null;
    public static final int STREAM_ID_FIELD_NUMBER = 2;
    public static final int STREAM_TOKEN_FIELD_NUMBER = 4;
    public static final int WRITES_FIELD_NUMBER = 3;
    private uj6<String, String> labels_ = uj6.f;
    private String database_ = "";
    private String streamId_ = "";
    private jj6.d<cd6> writes_ = mk6.h;
    private qi6 streamToken_ = qi6.f;

    public static final class b extends gj6.a<dd6, b> implements Object {
        public b() {
            super(dd6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(dd6.DEFAULT_INSTANCE);
        }
    }

    public static final class c {
        public static final tj6<String, String> a;

        static {
            fl6 fl6Var = fl6.o;
            a = new tj6<>(fl6Var, "", fl6Var, "");
        }
    }

    static {
        dd6 dd6Var = new dd6();
        DEFAULT_INSTANCE = dd6Var;
        gj6.z(dd6.class, dd6Var);
    }

    public static void C(dd6 dd6Var, String str) {
        Objects.requireNonNull(dd6Var);
        str.getClass();
        dd6Var.database_ = str;
    }

    public static void D(dd6 dd6Var, qi6 qi6Var) {
        Objects.requireNonNull(dd6Var);
        qi6Var.getClass();
        dd6Var.streamToken_ = qi6Var;
    }

    public static void E(dd6 dd6Var, cd6 cd6Var) {
        Objects.requireNonNull(dd6Var);
        cd6Var.getClass();
        jj6.d<cd6> dVar = dd6Var.writes_;
        if (!dVar.F0()) {
            dd6Var.writes_ = gj6.v(dVar);
        }
        dd6Var.writes_.add(cd6Var);
    }

    public static dd6 F() {
        return DEFAULT_INSTANCE;
    }

    public static b G() {
        return DEFAULT_INSTANCE.q();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0001\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003\u001b\u0004\n\u00052", new Object[]{"database_", "streamId_", "writes_", cd6.class, "streamToken_", "labels_", c.a});
            case NEW_MUTABLE_INSTANCE:
                return new dd6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<dd6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (dd6.class) {
                        bVar = PARSER;
                        if (bVar == null) {
                            bVar = new gj6.b<>(DEFAULT_INSTANCE);
                            PARSER = bVar;
                        }
                    }
                }
                return bVar;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
