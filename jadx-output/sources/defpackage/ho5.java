package defpackage;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public class ho5 implements un5 {
    public final /* synthetic */ io5 a;

    public ho5(io5 io5Var) {
        this.a = io5Var;
    }

    public void a(Object obj, Writer writer) throws IOException {
        io5 io5Var = this.a;
        jo5 jo5Var = new jo5(writer, io5Var.a, io5Var.b, io5Var.c, io5Var.d);
        jo5Var.i(obj, false);
        jo5Var.k();
        jo5Var.b.flush();
    }
}
