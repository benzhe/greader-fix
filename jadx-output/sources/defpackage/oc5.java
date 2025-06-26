package defpackage;

/* loaded from: classes.dex */
public interface oc5 {

    public enum a {
        EMBEDDING_DISABLED,
        BLOCKED_FOR_APP,
        NOT_PLAYABLE,
        NETWORK_ERROR,
        UNAUTHORIZED_OVERLAY,
        PLAYER_VIEW_TOO_SMALL,
        PLAYER_VIEW_NOT_VISIBLE,
        EMPTY_PLAYLIST,
        AUTOPLAY_DISABLED,
        USER_DECLINED_RESTRICTED_CONTENT,
        USER_DECLINED_HIGH_BANDWIDTH,
        UNEXPECTED_SERVICE_DISCONNECTION,
        INTERNAL_ERROR,
        UNKNOWN
    }

    public interface b {
        void a(e eVar, oc5 oc5Var, boolean z);

        void b(e eVar, nc5 nc5Var);
    }

    public interface c {
        void a();

        void b(String str);

        void c();

        void d();

        void e();

        void f(a aVar);
    }

    public enum d {
        DEFAULT,
        MINIMAL,
        CHROMELESS
    }

    public interface e {
    }
}
