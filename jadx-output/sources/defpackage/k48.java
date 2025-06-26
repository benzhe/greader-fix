package defpackage;

/* loaded from: classes2.dex */
public final class k48 {
    public static b a = null;
    public static boolean b = false;

    public static final class b extends SecurityManager {
        public b(a aVar) {
        }

        @Override // java.lang.SecurityManager
        public Class<?>[] getClassContext() {
            return super.getClassContext();
        }
    }

    public static final void a(String str) {
        System.err.println("SLF4J: " + str);
    }

    public static final void b(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }
}
