package defpackage;

import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public final class t43 {
    public static final s43 a;

    public static final class a extends s43 {
        @Override // defpackage.s43
        public final void a(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }

        @Override // defpackage.s43
        public final void b(Throwable th, Throwable th2) {
        }
    }

    static {
        s43 aVar;
        Integer num = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            aVar = (num == null || num.intValue() < 19) ? Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ^ true ? new x43() : new a() : new z43();
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = a.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            aVar = new a();
        }
        a = aVar;
        if (num == null) {
            return;
        }
        num.intValue();
    }
}
