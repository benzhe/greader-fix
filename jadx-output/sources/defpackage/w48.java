package defpackage;

import java.io.DataInput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes2.dex */
public final class w48 implements Externalizable {
    public byte e;
    public Object f;

    public w48() {
    }

    public static Object a(byte b, DataInput dataInput) throws IOException {
        b58 b58Var;
        b58 b58Var2;
        if (b == 64) {
            int i = t48.g;
            return t48.K(dataInput.readByte(), dataInput.readByte());
        }
        switch (b) {
            case 1:
                n48 n48Var = n48.g;
                return n48.t(dataInput.readLong(), dataInput.readInt());
            case 2:
                o48 o48Var = o48.g;
                return o48.O(dataInput.readLong(), dataInput.readInt());
            case 3:
                p48 p48Var = p48.h;
                return p48.c0(dataInput.readInt(), dataInput.readByte(), dataInput.readByte());
            case 4:
                return q48.f0(dataInput);
            case 5:
                return r48.U(dataInput);
            case 6:
                q48 q48VarF0 = q48.f0(dataInput);
                a58 a58VarS = a58.S(dataInput);
                z48 z48Var = (z48) a(dataInput.readByte(), dataInput);
                kt7.o(q48VarF0, "localDateTime");
                kt7.o(a58VarS, "offset");
                kt7.o(z48Var, "zone");
                if (!(z48Var instanceof a58) || a58VarS.equals(z48Var)) {
                    return new c58(q48VarF0, a58VarS, z48Var);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case 7:
                Pattern pattern = b58.h;
                String utf = dataInput.readUTF();
                if (utf.equals("Z") || utf.startsWith("+") || utf.startsWith("-")) {
                    throw new l48(jo.n("Invalid ID for region-based ZoneId, invalid format: ", utf));
                }
                if (utf.equals("UTC") || utf.equals(TimeZones.GMT_ID) || utf.equals("UT")) {
                    return new b58(utf, a58.j.L());
                }
                if (utf.startsWith("UTC+") || utf.startsWith("GMT+") || utf.startsWith("UTC-") || utf.startsWith("GMT-")) {
                    a58 a58VarO = a58.O(utf.substring(3));
                    if (a58VarO.f == 0) {
                        b58Var = new b58(utf.substring(0, 3), a58VarO.L());
                    } else {
                        b58Var = new b58(utf.substring(0, 3) + a58VarO.g, a58VarO.L());
                    }
                    return b58Var;
                }
                if (!utf.startsWith("UT+") && !utf.startsWith("UT-")) {
                    return b58.O(utf, false);
                }
                a58 a58VarO2 = a58.O(utf.substring(2));
                if (a58VarO2.f == 0) {
                    b58Var2 = new b58("UT", a58VarO2.L());
                } else {
                    StringBuilder sbZ = jo.z("UT");
                    sbZ.append(a58VarO2.g);
                    b58Var2 = new b58(sbZ.toString(), a58VarO2.L());
                }
                return b58Var2;
            case 8:
                return a58.S(dataInput);
            default:
                switch (b) {
                    case 66:
                        int i2 = v48.g;
                        return new v48(r48.U(dataInput), a58.S(dataInput));
                    case 67:
                        int i3 = x48.f;
                        return x48.L(dataInput.readInt());
                    case 68:
                        int i4 = y48.g;
                        return y48.K(dataInput.readInt(), dataInput.readByte());
                    case 69:
                        int i5 = u48.g;
                        return new u48(q48.f0(dataInput), a58.S(dataInput));
                    default:
                        throw new StreamCorruptedException("Unknown serialized type");
                }
        }
    }

    private Object readResolve() {
        return this.f;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        byte b = objectInput.readByte();
        this.e = b;
        this.f = a(b, objectInput);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.e;
        Object obj = this.f;
        objectOutput.writeByte(b);
        if (b == 64) {
            t48 t48Var = (t48) obj;
            objectOutput.writeByte(t48Var.e);
            objectOutput.writeByte(t48Var.f);
            return;
        }
        switch (b) {
            case 1:
                n48 n48Var = (n48) obj;
                objectOutput.writeLong(n48Var.e);
                objectOutput.writeInt(n48Var.f);
                return;
            case 2:
                o48 o48Var = (o48) obj;
                objectOutput.writeLong(o48Var.e);
                objectOutput.writeInt(o48Var.f);
                return;
            case 3:
                p48 p48Var = (p48) obj;
                objectOutput.writeInt(p48Var.e);
                objectOutput.writeByte(p48Var.f);
                objectOutput.writeByte(p48Var.g);
                return;
            case 4:
                ((q48) obj).j0(objectOutput);
                return;
            case 5:
                ((r48) obj).a0(objectOutput);
                return;
            case 6:
                c58 c58Var = (c58) obj;
                c58Var.e.j0(objectOutput);
                c58Var.f.T(objectOutput);
                c58Var.g.N(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((b58) obj).f);
                return;
            case 8:
                ((a58) obj).T(objectOutput);
                return;
            default:
                switch (b) {
                    case 66:
                        v48 v48Var = (v48) obj;
                        v48Var.e.a0(objectOutput);
                        v48Var.f.T(objectOutput);
                        return;
                    case 67:
                        objectOutput.writeInt(((x48) obj).e);
                        return;
                    case 68:
                        y48 y48Var = (y48) obj;
                        objectOutput.writeInt(y48Var.e);
                        objectOutput.writeByte(y48Var.f);
                        return;
                    case 69:
                        u48 u48Var = (u48) obj;
                        u48Var.e.j0(objectOutput);
                        u48Var.f.T(objectOutput);
                        return;
                    default:
                        throw new InvalidClassException("Unknown serialized type");
                }
        }
    }

    public w48(byte b, Object obj) {
        this.e = b;
        this.f = obj;
    }
}
