package defpackage;

import android.content.Context;
import defpackage.zo5;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes.dex */
public class qv5 {
    public static final Set<String> d = new HashSet(Arrays.asList(StringLookupFactory.KEY_DATE, "x-google-backends", "x-google-netmon-label", "x-google-service", "x-google-gfe-request-trace"));
    public final ow5 a;
    public final ex5 b;
    public final aw5 c;

    public qv5(aq5 aq5Var, ex5 ex5Var, op5 op5Var, Context context, jw5 jw5Var) {
        this.b = ex5Var;
        this.a = new ow5(aq5Var.a);
        this.c = new aw5(ex5Var, context, op5Var, aq5Var, jw5Var);
    }

    public static boolean a(x47 x47Var) {
        zo5.a aVar = zo5.a.w.get(x47Var.a.e, zo5.a.UNKNOWN);
        switch (aVar) {
            case OK:
                throw new IllegalArgumentException("Treated status OK as error");
            case CANCELLED:
            case UNKNOWN:
            case DEADLINE_EXCEEDED:
            case RESOURCE_EXHAUSTED:
            case INTERNAL:
            case UNAVAILABLE:
            case UNAUTHENTICATED:
                return false;
            case INVALID_ARGUMENT:
            case NOT_FOUND:
            case ALREADY_EXISTS:
            case PERMISSION_DENIED:
            case FAILED_PRECONDITION:
            case ABORTED:
            case OUT_OF_RANGE:
            case UNIMPLEMENTED:
            case DATA_LOSS:
                return true;
            default:
                throw new IllegalArgumentException("Unknown gRPC status code: " + aVar);
        }
    }
}
