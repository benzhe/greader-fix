package defpackage;

import defpackage.ak6;
import defpackage.gj6;
import java.io.InputStream;

/* loaded from: classes.dex */
public abstract class ji6<MessageType extends ak6> implements ik6<MessageType> {
    public static final yi6 a = yi6.a();

    @Override // defpackage.ik6
    public Object a(InputStream inputStream) throws kj6 {
        yi6 yi6Var = a;
        ri6 ri6VarF = ri6.f(inputStream);
        gj6 gj6VarY = gj6.y(((gj6.b) this).b, ri6VarF, yi6Var);
        try {
            ri6VarF.a(0);
            c(gj6VarY);
            return gj6VarY;
        } catch (kj6 e) {
            throw e;
        }
    }

    @Override // defpackage.ik6
    public Object b(ri6 ri6Var, yi6 yi6Var) throws kj6 {
        gj6 gj6VarY = gj6.y(((gj6.b) this).b, ri6Var, yi6Var);
        c(gj6VarY);
        return gj6VarY;
    }

    public final MessageType c(MessageType messagetype) throws kj6 {
        xk6 xk6Var;
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        if (messagetype instanceof ii6) {
            xk6Var = new xk6();
        } else {
            xk6Var = new xk6();
        }
        kj6 kj6Var = new kj6(xk6Var.getMessage());
        kj6Var.e = messagetype;
        throw kj6Var;
    }
}
