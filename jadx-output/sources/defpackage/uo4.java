package defpackage;

import java.io.PrintStream;

/* loaded from: classes.dex */
public final class uo4 {
    public static final xo4 a;

    public static final class a extends xo4 {
        @Override // defpackage.xo4
        public final void a(Throwable th, Throwable th2) {
        }
    }

    static {
        xo4 aVar;
        Integer num = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            aVar = (num == null || num.intValue() < 19) ? Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ^ true ? new yo4() : new a() : new ap4();
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
