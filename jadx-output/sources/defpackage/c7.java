package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.widget.R$styleable;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class c7 {
    public int a;
    public SparseArray<a> b = new SparseArray<>();

    public static class a {
        public int a;
        public ArrayList<b> b = new ArrayList<>();
        public int c;

        public a(Context context, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
            this.c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.State_android_id) {
                    this.a = typedArrayObtainStyledAttributes.getResourceId(index, this.a);
                } else if (index == R$styleable.State_constraints) {
                    this.c = typedArrayObtainStyledAttributes.getResourceId(index, this.c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.c);
                    context.getResources().getResourceName(this.c);
                    "layout".equals(resourceTypeName);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public int a(float f, float f2) {
            for (int i = 0; i < this.b.size(); i++) {
                if (this.b.get(i).a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    public static class b {
        public float a;
        public float b;
        public float c;
        public float d;
        public int e;

        public b(Context context, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
            this.a = Float.NaN;
            this.b = Float.NaN;
            this.c = Float.NaN;
            this.d = Float.NaN;
            this.e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.Variant_constraints) {
                    this.e = typedArrayObtainStyledAttributes.getResourceId(index, this.e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.e);
                    context.getResources().getResourceName(this.e);
                    "layout".equals(resourceTypeName);
                } else if (index == R$styleable.Variant_region_heightLessThan) {
                    this.d = typedArrayObtainStyledAttributes.getDimension(index, this.d);
                } else if (index == R$styleable.Variant_region_heightMoreThan) {
                    this.b = typedArrayObtainStyledAttributes.getDimension(index, this.b);
                } else if (index == R$styleable.Variant_region_widthLessThan) {
                    this.c = typedArrayObtainStyledAttributes.getDimension(index, this.c);
                } else if (index == R$styleable.Variant_region_widthMoreThan) {
                    this.a = typedArrayObtainStyledAttributes.getDimension(index, this.a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public boolean a(float f, float f2) {
            if (!Float.isNaN(this.a) && f < this.a) {
                return false;
            }
            if (!Float.isNaN(this.b) && f2 < this.b) {
                return false;
            }
            if (Float.isNaN(this.c) || f <= this.c) {
                return Float.isNaN(this.d) || f2 <= this.d;
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c7(android.content.Context r10, org.xmlpull.v1.XmlPullParser r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r9 = this;
            r9.<init>()
            r0 = -1
            r9.a = r0
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r9.b = r1
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            android.util.AttributeSet r1 = android.util.Xml.asAttributeSet(r11)
            int[] r2 = androidx.constraintlayout.widget.R$styleable.StateSet
            android.content.res.TypedArray r1 = r10.obtainStyledAttributes(r1, r2)
            int r2 = r1.getIndexCount()
            r3 = 0
            r4 = 0
        L22:
            if (r4 >= r2) goto L37
            int r5 = r1.getIndex(r4)
            int r6 = androidx.constraintlayout.widget.R$styleable.StateSet_defaultState
            if (r5 != r6) goto L34
            int r6 = r9.a
            int r5 = r1.getResourceId(r5, r6)
            r9.a = r5
        L34:
            int r4 = r4 + 1
            goto L22
        L37:
            r1 = 0
            int r2 = r11.getEventType()     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
        L3c:
            r4 = 1
            if (r2 == r4) goto Ld5
            if (r2 == 0) goto Lc3
            java.lang.String r5 = "StateSet"
            r6 = 3
            r7 = 2
            if (r2 == r7) goto L57
            if (r2 == r6) goto L4b
            goto Lc6
        L4b:
            java.lang.String r2 = r11.getName()     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            boolean r2 = r5.equals(r2)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            if (r2 == 0) goto Lc6
            goto Ld5
        L57:
            java.lang.String r2 = r11.getName()     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            int r8 = r2.hashCode()     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            switch(r8) {
                case 80204913: goto L7f;
                case 1301459538: goto L75;
                case 1382829617: goto L6d;
                case 1901439077: goto L63;
                default: goto L62;
            }     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
        L62:
            goto L89
        L63:
            java.lang.String r5 = "Variant"
            boolean r5 = r2.equals(r5)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            if (r5 == 0) goto L89
            r5 = 3
            goto L8a
        L6d:
            boolean r5 = r2.equals(r5)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            if (r5 == 0) goto L89
            r5 = 1
            goto L8a
        L75:
            java.lang.String r5 = "LayoutDescription"
            boolean r5 = r2.equals(r5)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            if (r5 == 0) goto L89
            r5 = 0
            goto L8a
        L7f:
            java.lang.String r5 = "State"
            boolean r5 = r2.equals(r5)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            if (r5 == 0) goto L89
            r5 = 2
            goto L8a
        L89:
            r5 = -1
        L8a:
            if (r5 == 0) goto Lc6
            if (r5 == r4) goto Lc6
            if (r5 == r7) goto Lb6
            if (r5 == r6) goto La9
            java.lang.String r4 = "ConstraintLayoutStates"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            r5.<init>()     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            java.lang.String r6 = "unknown tag "
            r5.append(r6)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            r5.append(r2)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            java.lang.String r2 = r5.toString()     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            android.util.Log.v(r4, r2)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            goto Lc6
        La9:
            c7$b r2 = new c7$b     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            r2.<init>(r10, r11)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            if (r1 == 0) goto Lc6
            java.util.ArrayList<c7$b> r4 = r1.b     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            r4.add(r2)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            goto Lc6
        Lb6:
            c7$a r1 = new c7$a     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            r1.<init>(r10, r11)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            android.util.SparseArray<c7$a> r2 = r9.b     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            int r4 = r1.a     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            r2.put(r4, r1)     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            goto Lc6
        Lc3:
            r11.getName()     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
        Lc6:
            int r2 = r11.next()     // Catch: java.io.IOException -> Lcc org.xmlpull.v1.XmlPullParserException -> Ld1
            goto L3c
        Lcc:
            r10 = move-exception
            r10.printStackTrace()
            goto Ld5
        Ld1:
            r10 = move-exception
            r10.printStackTrace()
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c7.<init>(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public int a(int i, int i2, int i3) {
        int i4;
        int iA;
        float f = i2;
        float f2 = i3;
        if (-1 == i) {
            a aVarValueAt = i == -1 ? this.b.valueAt(0) : this.b.get(-1);
            if (aVarValueAt == null || -1 == (iA = aVarValueAt.a(f, f2))) {
                return -1;
            }
            i4 = iA == -1 ? aVarValueAt.c : aVarValueAt.b.get(iA).e;
        } else {
            a aVar = this.b.get(i);
            if (aVar == null) {
                return -1;
            }
            int iA2 = aVar.a(f, f2);
            i4 = iA2 == -1 ? aVar.c : aVar.b.get(iA2).e;
        }
        return i4;
    }
}
