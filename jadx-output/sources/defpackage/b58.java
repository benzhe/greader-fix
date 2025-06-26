package defpackage;

import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class b58 extends z48 implements Serializable {
    public static final Pattern h = Pattern.compile("[A-Za-z][A-Za-z0-9~/._+-]+");
    public final String f;
    public final transient k78 g;

    public b58(String str, k78 k78Var) {
        this.f = str;
        this.g = k78Var;
    }

    public static b58 O(String str, boolean z) {
        kt7.o(str, "zoneId");
        if (str.length() < 2 || !h.matcher(str).matches()) {
            throw new l48(jo.n("Invalid ID for region-based ZoneId, invalid format: ", str));
        }
        k78 k78VarL = null;
        try {
            k78VarL = n78.a(str, true);
        } catch (l78 e) {
            if (str.equals("GMT0")) {
                k78VarL = a58.j.L();
            } else if (z) {
                throw e;
            }
        }
        return new b58(str, k78VarL);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 7, this);
    }

    @Override // defpackage.z48
    public String K() {
        return this.f;
    }

    @Override // defpackage.z48
    public k78 L() {
        k78 k78Var = this.g;
        return k78Var != null ? k78Var : n78.a(this.f, false);
    }

    @Override // defpackage.z48
    public void N(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.f);
    }
}
