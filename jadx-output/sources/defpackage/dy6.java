package defpackage;

import android.database.AbstractCursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;

/* loaded from: classes2.dex */
public class dy6 extends AbstractCursor {
    public final String[] e;
    public Object[] f;
    public int g = 0;
    public final int h;

    public dy6(String[] strArr) {
        this.e = strArr;
        int length = strArr.length;
        this.h = length;
        this.f = new Object[length * 16];
    }

    public void a(Object[] objArr) {
        int length = objArr.length;
        int i = this.h;
        if (length != i) {
            StringBuilder sbZ = jo.z("columnNames.length = ");
            sbZ.append(this.h);
            sbZ.append(", columnValues.length = ");
            sbZ.append(objArr.length);
            throw new IllegalArgumentException(sbZ.toString());
        }
        int i2 = this.g;
        this.g = i2 + 1;
        int i3 = i2 * i;
        int i4 = i + i3;
        Object[] objArr2 = this.f;
        if (i4 > objArr2.length) {
            int length2 = objArr2.length * 2;
            if (length2 >= i4) {
                i4 = length2;
            }
            Object[] objArr3 = new Object[i4];
            this.f = objArr3;
            System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        }
        System.arraycopy(objArr, 0, this.f, i3, this.h);
    }

    public final Object b(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.h)) {
            StringBuilder sbA = jo.A("Requested column: ", i, ", # of columns: ");
            sbA.append(this.h);
            throw new CursorIndexOutOfBoundsException(sbA.toString());
        }
        int i3 = ((AbstractCursor) this).mPos;
        if (i3 < 0) {
            throw new CursorIndexOutOfBoundsException("Before first row.");
        }
        if (i3 < this.g) {
            return this.f[(i3 * i2) + i];
        }
        throw new CursorIndexOutOfBoundsException("After last row.");
    }

    @Override // android.database.AbstractCursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.f = null;
    }

    @Override // android.database.AbstractCursor, android.database.CrossProcessCursor
    public void fillWindow(int i, CursorWindow cursorWindow) {
        if (i < 0 || i > this.g) {
            return;
        }
        cursorWindow.acquireReference();
        try {
            int i2 = ((AbstractCursor) this).mPos;
            ((AbstractCursor) this).mPos = i - 1;
            cursorWindow.clear();
            cursorWindow.setStartPosition(i);
            int columnCount = getColumnCount();
            cursorWindow.setNumColumns(columnCount);
            while (moveToNext() && cursorWindow.allocRow()) {
                int i3 = 0;
                while (true) {
                    if (i3 >= columnCount) {
                        break;
                    }
                    Object objB = b(i3);
                    if (objB != null) {
                        if (objB instanceof byte[]) {
                            cursorWindow.putBlob((byte[]) objB, ((AbstractCursor) this).mPos, i3);
                        } else if (!cursorWindow.putString(getString(i3), ((AbstractCursor) this).mPos, i3)) {
                            cursorWindow.freeLastRow();
                            break;
                        }
                        i3++;
                    } else {
                        if (!cursorWindow.putNull(((AbstractCursor) this).mPos, i3)) {
                            cursorWindow.freeLastRow();
                            break;
                        }
                        i3++;
                    }
                }
            }
            ((AbstractCursor) this).mPos = i2;
        } catch (IllegalStateException unused) {
        } catch (Throwable th) {
            cursorWindow.releaseReference();
            throw th;
        }
        cursorWindow.releaseReference();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public byte[] getBlob(int i) {
        Object objB = b(i);
        return objB instanceof byte[] ? (byte[]) objB : new byte[0];
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        return this.e;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        return this.g;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public double getDouble(int i) {
        Object objB = b(i);
        return objB instanceof String ? Double.valueOf((String) objB).doubleValue() : ((Number) objB).doubleValue();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public float getFloat(int i) {
        Object objB = b(i);
        return objB instanceof String ? Float.valueOf((String) objB).floatValue() : ((Number) objB).floatValue();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getInt(int i) {
        Object objB = b(i);
        return objB instanceof String ? Integer.valueOf((String) objB).intValue() : ((Number) objB).intValue();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public long getLong(int i) {
        Object objB = b(i);
        return objB instanceof String ? Long.valueOf((String) objB).longValue() : ((Number) objB).longValue();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public short getShort(int i) {
        Object objB = b(i);
        return objB instanceof String ? Short.valueOf((String) objB).shortValue() : ((Number) objB).shortValue();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String getString(int i) {
        return String.valueOf(b(i));
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean isNull(int i) {
        return b(i) == null;
    }
}
