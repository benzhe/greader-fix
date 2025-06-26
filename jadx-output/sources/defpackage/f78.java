package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public final class f78 implements Externalizable {
    public byte e;
    public Object f;

    public f78() {
    }

    public static long a(DataInput dataInput) throws IOException {
        if ((dataInput.readByte() & 255) == 255) {
            return dataInput.readLong();
        }
        return ((((r0 << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255)) * 900) - 4575744000L;
    }

    public static Object b(byte b, DataInput dataInput) throws IOException, ClassNotFoundException {
        if (b != 1) {
            if (b != 2) {
                if (b == 3) {
                    return j78.a(dataInput);
                }
                throw new StreamCorruptedException("Unknown serialized type");
            }
            long jA = a(dataInput);
            a58 a58VarC = c(dataInput);
            a58 a58VarC2 = c(dataInput);
            if (a58VarC.equals(a58VarC2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            return new i78(jA, a58VarC, a58VarC2);
        }
        int i = dataInput.readInt();
        long[] jArr = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = a(dataInput);
        }
        int i3 = i + 1;
        a58[] a58VarArr = new a58[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            a58VarArr[i4] = c(dataInput);
        }
        int i5 = dataInput.readInt();
        long[] jArr2 = new long[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            jArr2[i6] = a(dataInput);
        }
        int i7 = i5 + 1;
        a58[] a58VarArr2 = new a58[i7];
        for (int i8 = 0; i8 < i7; i8++) {
            a58VarArr2[i8] = c(dataInput);
        }
        int i9 = dataInput.readByte();
        j78[] j78VarArr = new j78[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            j78VarArr[i10] = j78.a(dataInput);
        }
        return new g78(jArr, a58VarArr, jArr2, a58VarArr2, j78VarArr);
    }

    public static a58 c(DataInput dataInput) throws IOException {
        byte b = dataInput.readByte();
        return b == Byte.MAX_VALUE ? a58.Q(dataInput.readInt()) : a58.Q(b * 900);
    }

    public static void d(long j, DataOutput dataOutput) throws IOException {
        if (j < -4575744000L || j >= 10413792000L || j % 900 != 0) {
            dataOutput.writeByte(Base64.BASELENGTH);
            dataOutput.writeLong(j);
        } else {
            int i = (int) ((j + 4575744000L) / 900);
            dataOutput.writeByte((i >>> 16) & Base64.BASELENGTH);
            dataOutput.writeByte((i >>> 8) & Base64.BASELENGTH);
            dataOutput.writeByte(i & Base64.BASELENGTH);
        }
    }

    public static void e(a58 a58Var, DataOutput dataOutput) throws IOException {
        int i = a58Var.f;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    private Object readResolve() {
        return this.f;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        byte b = objectInput.readByte();
        this.e = b;
        this.f = b(b, objectInput);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.e;
        Object obj = this.f;
        objectOutput.writeByte(b);
        if (b != 1) {
            if (b != 2) {
                if (b != 3) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                ((j78) obj).b(objectOutput);
                return;
            } else {
                i78 i78Var = (i78) obj;
                d(i78Var.e.P(i78Var.f), objectOutput);
                e(i78Var.f, objectOutput);
                e(i78Var.g, objectOutput);
                return;
            }
        }
        g78 g78Var = (g78) obj;
        objectOutput.writeInt(g78Var.e.length);
        for (long j : g78Var.e) {
            d(j, objectOutput);
        }
        for (a58 a58Var : g78Var.f) {
            e(a58Var, objectOutput);
        }
        objectOutput.writeInt(g78Var.g.length);
        for (long j2 : g78Var.g) {
            d(j2, objectOutput);
        }
        for (a58 a58Var2 : g78Var.i) {
            e(a58Var2, objectOutput);
        }
        objectOutput.writeByte(g78Var.j.length);
        for (j78 j78Var : g78Var.j) {
            j78Var.b(objectOutput);
        }
    }

    public f78(byte b, Object obj) {
        this.e = b;
        this.f = obj;
    }
}
