package defpackage;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.Iterator;
import java.util.Objects;
import java.util.ServiceLoader;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class w58 implements Externalizable {
    public byte e;
    public Object f;

    public w58() {
    }

    private Object readResolve() {
        return this.f;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        Object r58Var;
        Object objM;
        byte b = objectInput.readByte();
        this.e = b;
        switch (b) {
            case 1:
                p48 p48Var = r58.h;
                int i = objectInput.readInt();
                byte b2 = objectInput.readByte();
                byte b3 = objectInput.readByte();
                Objects.requireNonNull(q58.h);
                r58Var = new r58(p48.c0(i, b2, b3));
                objM = r58Var;
                this.f = objM;
                return;
            case 2:
                s58 s58Var = s58.h;
                objM = s58.M(objectInput.readByte());
                this.f = objM;
                return;
            case 3:
                int[] iArr = m58.l;
                int i2 = objectInput.readInt();
                byte b4 = objectInput.readByte();
                byte b5 = objectInput.readByte();
                l58 l58Var = l58.g;
                objM = m58.g0(i2, b4, b5);
                this.f = objM;
                return;
            case 4:
                objM = n58.K(objectInput.readByte());
                this.f = objM;
                return;
            case 5:
                int i3 = objectInput.readInt();
                byte b6 = objectInput.readByte();
                byte b7 = objectInput.readByte();
                t58 t58Var = t58.g;
                r58Var = new u58(p48.c0(i3 + 1911, b6, b7));
                objM = r58Var;
                this.f = objM;
                return;
            case 6:
                objM = v58.K(objectInput.readByte());
                this.f = objM;
                return;
            case 7:
                int i4 = objectInput.readInt();
                byte b8 = objectInput.readByte();
                byte b9 = objectInput.readByte();
                x58 x58Var = x58.g;
                r58Var = new y58(p48.c0(i4 - 543, b8, b9));
                objM = r58Var;
                this.f = objM;
                return;
            case 8:
                objM = z58.K(objectInput.readByte());
                this.f = objM;
                return;
            case 9:
            case 10:
            default:
                throw new StreamCorruptedException("Unknown serialized type");
            case 11:
                ConcurrentHashMap<String, j58> concurrentHashMap = j58.e;
                String utf = objectInput.readUTF();
                ConcurrentHashMap<String, j58> concurrentHashMap2 = j58.e;
                if (concurrentHashMap2.isEmpty()) {
                    j58.K(o58.g);
                    j58.K(x58.g);
                    j58.K(t58.g);
                    j58.K(q58.h);
                    l58 l58Var2 = l58.g;
                    j58.K(l58Var2);
                    concurrentHashMap2.putIfAbsent("Hijrah", l58Var2);
                    j58.f.putIfAbsent("islamic", l58Var2);
                    Iterator it = ServiceLoader.load(j58.class, j58.class.getClassLoader()).iterator();
                    while (it.hasNext()) {
                        j58 j58Var = (j58) it.next();
                        j58.e.putIfAbsent(j58Var.D(), j58Var);
                        String strC = j58Var.C();
                        if (strC != null) {
                            j58.f.putIfAbsent(strC, j58Var);
                        }
                    }
                }
                j58 j58Var2 = j58.e.get(utf);
                if (j58Var2 == null && (j58Var2 = j58.f.get(utf)) == null) {
                    throw new l48(jo.n("Unknown chronology: ", utf));
                }
                objM = j58Var2;
                this.f = objM;
                return;
            case 12:
                objM = ((e58) objectInput.readObject()).K((r48) objectInput.readObject());
                this.f = objM;
                return;
            case 13:
                objM = ((f58) objectInput.readObject()).K((a58) objectInput.readObject()).V((z48) objectInput.readObject());
                this.f = objM;
                return;
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.e;
        Object obj = this.f;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                r58 r58Var = (r58) obj;
                Objects.requireNonNull(r58Var);
                objectOutput.writeInt(r58Var.k(q68.I));
                objectOutput.writeByte(r58Var.k(q68.F));
                objectOutput.writeByte(r58Var.k(q68.A));
                return;
            case 2:
                objectOutput.writeByte(((s58) obj).e);
                return;
            case 3:
                m58 m58Var = (m58) obj;
                Objects.requireNonNull(m58Var);
                objectOutput.writeInt(m58Var.k(q68.I));
                objectOutput.writeByte(m58Var.k(q68.F));
                objectOutput.writeByte(m58Var.k(q68.A));
                return;
            case 4:
                objectOutput.writeByte(((n58) obj).ordinal());
                return;
            case 5:
                u58 u58Var = (u58) obj;
                Objects.requireNonNull(u58Var);
                objectOutput.writeInt(u58Var.k(q68.I));
                objectOutput.writeByte(u58Var.k(q68.F));
                objectOutput.writeByte(u58Var.k(q68.A));
                return;
            case 6:
                objectOutput.writeByte(((v58) obj).ordinal());
                return;
            case 7:
                y58 y58Var = (y58) obj;
                Objects.requireNonNull(y58Var);
                objectOutput.writeInt(y58Var.k(q68.I));
                objectOutput.writeByte(y58Var.k(q68.F));
                objectOutput.writeByte(y58Var.k(q68.A));
                return;
            case 8:
                objectOutput.writeByte(((z58) obj).ordinal());
                return;
            case 9:
            case 10:
            default:
                throw new InvalidClassException("Unknown serialized type");
            case 11:
                objectOutput.writeUTF(((j58) obj).D());
                return;
            case 12:
                g58 g58Var = (g58) obj;
                objectOutput.writeObject(g58Var.e);
                objectOutput.writeObject(g58Var.f);
                return;
            case 13:
                i58 i58Var = (i58) obj;
                objectOutput.writeObject(i58Var.e);
                objectOutput.writeObject(i58Var.f);
                objectOutput.writeObject(i58Var.g);
                return;
        }
    }

    public w58(byte b, Object obj) {
        this.e = b;
        this.f = obj;
    }
}
