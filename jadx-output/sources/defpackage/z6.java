package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class z6 {
    public final ConstraintLayout a;
    public int b = -1;
    public int c = -1;
    public SparseArray<a> d = new SparseArray<>();
    public SparseArray<a7> e = new SparseArray<>();

    public static class a {
        public int a;
        public ArrayList<b> b = new ArrayList<>();
        public int c;
        public a7 d;

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
                    if ("layout".equals(resourceTypeName)) {
                        a7 a7Var = new a7();
                        this.d = a7Var;
                        a7Var.d((ConstraintLayout) LayoutInflater.from(context).inflate(this.c, (ViewGroup) null));
                    }
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
        public a7 f;

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
                    if ("layout".equals(resourceTypeName)) {
                        a7 a7Var = new a7();
                        this.f = a7Var;
                        a7Var.d((ConstraintLayout) LayoutInflater.from(context).inflate(this.e, (ViewGroup) null));
                    }
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

    /* JADX WARN: Removed duplicated region for block: B:28:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public z6(android.content.Context r8, androidx.constraintlayout.widget.ConstraintLayout r9, int r10) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException, java.lang.NumberFormatException {
        /*
            r7 = this;
            r7.<init>()
            r0 = -1
            r7.b = r0
            r7.c = r0
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r7.d = r1
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r7.e = r1
            r7.a = r9
            android.content.res.Resources r9 = r8.getResources()
            android.content.res.XmlResourceParser r9 = r9.getXml(r10)
            int r10 = r9.getEventType()     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r1 = 0
        L25:
            r2 = 1
            if (r10 == r2) goto Lc2
            if (r10 == 0) goto Lb0
            r3 = 2
            if (r10 == r3) goto L2f
            goto Lb3
        L2f:
            java.lang.String r10 = r9.getName()     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            int r4 = r10.hashCode()     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r5 = 4
            r6 = 3
            switch(r4) {
                case -1349929691: goto L65;
                case 80204913: goto L5b;
                case 1382829617: goto L51;
                case 1657696882: goto L47;
                case 1901439077: goto L3d;
                default: goto L3c;
            }     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
        L3c:
            goto L6f
        L3d:
            java.lang.String r4 = "Variant"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            if (r4 == 0) goto L6f
            r4 = 3
            goto L70
        L47:
            java.lang.String r4 = "layoutDescription"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            if (r4 == 0) goto L6f
            r4 = 0
            goto L70
        L51:
            java.lang.String r4 = "StateSet"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            if (r4 == 0) goto L6f
            r4 = 1
            goto L70
        L5b:
            java.lang.String r4 = "State"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            if (r4 == 0) goto L6f
            r4 = 2
            goto L70
        L65:
            java.lang.String r4 = "ConstraintSet"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            if (r4 == 0) goto L6f
            r4 = 4
            goto L70
        L6f:
            r4 = -1
        L70:
            if (r4 == 0) goto Lb3
            if (r4 == r2) goto Lb3
            if (r4 == r3) goto La2
            if (r4 == r6) goto L95
            if (r4 == r5) goto L91
            java.lang.String r2 = "ConstraintLayoutStates"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r3.<init>()     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            java.lang.String r4 = "unknown tag "
            r3.append(r4)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r3.append(r10)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            java.lang.String r10 = r3.toString()     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            android.util.Log.v(r2, r10)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            goto Lb3
        L91:
            r7.a(r8, r9)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            goto Lb3
        L95:
            z6$b r10 = new z6$b     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r10.<init>(r8, r9)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            if (r1 == 0) goto Lb3
            java.util.ArrayList<z6$b> r2 = r1.b     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r2.add(r10)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            goto Lb3
        La2:
            z6$a r10 = new z6$a     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r10.<init>(r8, r9)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            android.util.SparseArray<z6$a> r1 = r7.d     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            int r2 = r10.a     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r1.put(r2, r10)     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            r1 = r10
            goto Lb3
        Lb0:
            r9.getName()     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
        Lb3:
            int r10 = r9.next()     // Catch: java.io.IOException -> Lb9 org.xmlpull.v1.XmlPullParserException -> Lbe
            goto L25
        Lb9:
            r8 = move-exception
            r8.printStackTrace()
            goto Lc2
        Lbe:
            r8 = move-exception
            r8.printStackTrace()
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.z6.<init>(android.content.Context, androidx.constraintlayout.widget.ConstraintLayout, int):void");
    }

    public final void a(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, NumberFormatException, IOException {
        a7 a7Var = new a7();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                a7Var.i(context, xmlPullParser);
                this.e.put(identifier, a7Var);
                return;
            }
        }
    }

    public void b(int i, float f, float f2) {
        int iA;
        int i2 = this.b;
        if (i2 == i) {
            a aVarValueAt = i == -1 ? this.d.valueAt(0) : this.d.get(i2);
            int i3 = this.c;
            if ((i3 == -1 || !aVarValueAt.b.get(i3).a(f, f2)) && this.c != (iA = aVarValueAt.a(f, f2))) {
                a7 a7Var = iA == -1 ? null : aVarValueAt.b.get(iA).f;
                if (iA != -1) {
                    int i4 = aVarValueAt.b.get(iA).e;
                }
                if (a7Var == null) {
                    return;
                }
                this.c = iA;
                a7Var.b(this.a);
                return;
            }
            return;
        }
        this.b = i;
        a aVar = this.d.get(i);
        int iA2 = aVar.a(f, f2);
        a7 a7Var2 = iA2 == -1 ? aVar.d : aVar.b.get(iA2).f;
        if (iA2 != -1) {
            int i5 = aVar.b.get(iA2).e;
        }
        if (a7Var2 != null) {
            this.c = iA2;
            a7Var2.b(this.a);
            return;
        }
        Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f + ", " + f2);
    }
}
