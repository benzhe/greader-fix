package defpackage;

import java.io.PrintStream;

/* loaded from: classes.dex */
public final class q74 {
    public static final k74 a;

    static {
        k74 o74Var;
        Integer num = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            o74Var = (num == null || num.intValue() < 19) ? !Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ? new n74() : new o74() : new p74();
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = o74.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            o74Var = new o74();
        }
        a = o74Var;
        if (num == null) {
            return;
        }
        num.intValue();
    }
}
