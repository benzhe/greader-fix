package defpackage;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes.dex */
public final class si3 {
    public final ig3[] a;
    public final kg3 b;
    public ig3 c;

    public si3(ig3[] ig3VarArr, kg3 kg3Var) {
        this.a = ig3VarArr;
        this.b = kg3Var;
    }

    public final ig3 a(gg3 gg3Var, Uri uri) throws InterruptedException, IOException {
        ig3 ig3Var = this.c;
        if (ig3Var != null) {
            return ig3Var;
        }
        ig3[] ig3VarArr = this.a;
        int length = ig3VarArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            ig3 ig3Var2 = ig3VarArr[i2];
            try {
            } catch (EOFException unused) {
            } finally {
                ((eg3) gg3Var).e = 0;
            }
            if (ig3Var2.e(gg3Var)) {
                this.c = ig3Var2;
                break;
            }
            i2++;
        }
        ig3 ig3Var3 = this.c;
        if (ig3Var3 != null) {
            ig3Var3.c(this.b);
            return this.c;
        }
        ig3[] ig3VarArr2 = this.a;
        int i3 = el3.a;
        StringBuilder sb = new StringBuilder();
        while (i < ig3VarArr2.length) {
            sb.append(ig3VarArr2[i].getClass().getSimpleName());
            if (i < ig3VarArr2.length - 1) {
                sb.append(", ");
            }
            i++;
        }
        String string = sb.toString();
        throw new mj3(jo.c(jo.x(string, 58), "None of the available extractors (", string, ") could read the stream."), uri);
    }
}
