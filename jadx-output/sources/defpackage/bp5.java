package defpackage;

import android.content.Context;
import com.google.firebase.firestore.FirebaseFirestore;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class bp5 implements FirebaseFirestore.a {
    public final Map<String, FirebaseFirestore> a = new HashMap();
    public final pe5 b;
    public final Context c;
    public final of5 d;
    public final jw5 e;

    public bp5(Context context, pe5 pe5Var, of5 of5Var, jw5 jw5Var) {
        this.c = context;
        this.b = pe5Var;
        this.d = of5Var;
        this.e = jw5Var;
        pe5Var.a();
        pe5Var.i.add(this);
    }
}
