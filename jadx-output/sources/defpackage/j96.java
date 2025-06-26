package defpackage;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class j96 {
    public MessageType a;
    public f96 b;

    public j96(f96 f96Var, MessageType messageType, Map<String, String> map) {
        this.b = f96Var;
        this.a = messageType;
    }

    @Deprecated
    public h96 a() {
        return null;
    }
}
