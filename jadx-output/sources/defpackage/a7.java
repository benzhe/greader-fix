package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.Guideline;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import defpackage.d0;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class a7 {
    public static final int[] d = {0, 4, 8};
    public static SparseIntArray e;
    public HashMap<String, y6> a = new HashMap<>();
    public boolean b = true;
    public HashMap<Integer, a> c = new HashMap<>();

    public static class a {
        public int a;
        public final d b = new d();
        public final c c = new c();
        public final b d = new b();
        public final e e = new e();
        public HashMap<String, y6> f = new HashMap<>();

        public void a(ConstraintLayout.a aVar) {
            b bVar = this.d;
            aVar.d = bVar.h;
            aVar.e = bVar.i;
            aVar.f = bVar.j;
            aVar.g = bVar.k;
            aVar.h = bVar.l;
            aVar.i = bVar.m;
            aVar.j = bVar.n;
            aVar.k = bVar.o;
            aVar.l = bVar.p;
            aVar.p = bVar.q;
            aVar.q = bVar.r;
            aVar.r = bVar.s;
            aVar.s = bVar.t;
            ((ViewGroup.MarginLayoutParams) aVar).leftMargin = bVar.D;
            ((ViewGroup.MarginLayoutParams) aVar).rightMargin = bVar.E;
            ((ViewGroup.MarginLayoutParams) aVar).topMargin = bVar.F;
            ((ViewGroup.MarginLayoutParams) aVar).bottomMargin = bVar.G;
            aVar.x = bVar.O;
            aVar.y = bVar.N;
            aVar.u = bVar.K;
            aVar.w = bVar.M;
            aVar.z = bVar.u;
            aVar.A = bVar.v;
            aVar.m = bVar.x;
            aVar.n = bVar.y;
            b bVar2 = this.d;
            aVar.o = bVar2.z;
            aVar.B = bVar2.w;
            aVar.P = bVar2.A;
            aVar.Q = bVar2.B;
            aVar.E = bVar2.P;
            aVar.D = bVar2.Q;
            aVar.G = bVar2.S;
            aVar.F = bVar2.R;
            aVar.S = bVar2.h0;
            aVar.T = bVar2.i0;
            aVar.H = bVar2.T;
            aVar.I = bVar2.U;
            aVar.L = bVar2.V;
            aVar.M = bVar2.W;
            aVar.J = bVar2.X;
            aVar.K = bVar2.Y;
            aVar.N = bVar2.Z;
            aVar.O = bVar2.a0;
            aVar.R = bVar2.C;
            aVar.c = bVar2.g;
            aVar.a = bVar2.e;
            aVar.b = bVar2.f;
            ((ViewGroup.MarginLayoutParams) aVar).width = bVar2.c;
            ((ViewGroup.MarginLayoutParams) aVar).height = bVar2.d;
            String str = bVar2.g0;
            if (str != null) {
                aVar.U = str;
            }
            aVar.setMarginStart(this.d.I);
            aVar.setMarginEnd(this.d.H);
            aVar.a();
        }

        public final void b(int i, ConstraintLayout.a aVar) {
            this.a = i;
            b bVar = this.d;
            bVar.h = aVar.d;
            bVar.i = aVar.e;
            bVar.j = aVar.f;
            bVar.k = aVar.g;
            bVar.l = aVar.h;
            bVar.m = aVar.i;
            bVar.n = aVar.j;
            bVar.o = aVar.k;
            bVar.p = aVar.l;
            bVar.q = aVar.p;
            bVar.r = aVar.q;
            bVar.s = aVar.r;
            bVar.t = aVar.s;
            bVar.u = aVar.z;
            bVar.v = aVar.A;
            bVar.w = aVar.B;
            bVar.x = aVar.m;
            bVar.y = aVar.n;
            bVar.z = aVar.o;
            bVar.A = aVar.P;
            bVar.B = aVar.Q;
            bVar.C = aVar.R;
            bVar.g = aVar.c;
            bVar.e = aVar.a;
            bVar.f = aVar.b;
            b bVar2 = this.d;
            bVar2.c = ((ViewGroup.MarginLayoutParams) aVar).width;
            bVar2.d = ((ViewGroup.MarginLayoutParams) aVar).height;
            bVar2.D = ((ViewGroup.MarginLayoutParams) aVar).leftMargin;
            bVar2.E = ((ViewGroup.MarginLayoutParams) aVar).rightMargin;
            bVar2.F = ((ViewGroup.MarginLayoutParams) aVar).topMargin;
            bVar2.G = ((ViewGroup.MarginLayoutParams) aVar).bottomMargin;
            bVar2.P = aVar.E;
            bVar2.Q = aVar.D;
            bVar2.S = aVar.G;
            bVar2.R = aVar.F;
            bVar2.h0 = aVar.S;
            bVar2.i0 = aVar.T;
            bVar2.T = aVar.H;
            bVar2.U = aVar.I;
            bVar2.V = aVar.L;
            bVar2.W = aVar.M;
            bVar2.X = aVar.J;
            bVar2.Y = aVar.K;
            bVar2.Z = aVar.N;
            bVar2.a0 = aVar.O;
            bVar2.g0 = aVar.U;
            bVar2.K = aVar.u;
            bVar2.M = aVar.w;
            bVar2.J = aVar.t;
            bVar2.L = aVar.v;
            b bVar3 = this.d;
            bVar3.O = aVar.x;
            bVar3.N = aVar.y;
            bVar3.H = aVar.getMarginEnd();
            this.d.I = aVar.getMarginStart();
        }

        public final void c(int i, Constraints.a aVar) {
            b(i, aVar);
            this.b.d = aVar.m0;
            e eVar = this.e;
            eVar.b = aVar.p0;
            eVar.c = aVar.q0;
            eVar.d = aVar.r0;
            eVar.e = aVar.s0;
            eVar.f = aVar.t0;
            eVar.g = aVar.u0;
            eVar.h = aVar.v0;
            eVar.i = aVar.w0;
            eVar.j = aVar.x0;
            eVar.k = aVar.y0;
            eVar.m = aVar.o0;
            eVar.l = aVar.n0;
        }

        public Object clone() throws CloneNotSupportedException {
            a aVar = new a();
            aVar.d.a(this.d);
            aVar.c.a(this.c);
            aVar.b.a(this.b);
            aVar.e.a(this.e);
            aVar.a = this.a;
            return aVar;
        }
    }

    public static class b {
        public static SparseIntArray k0;
        public int c;
        public int d;
        public int[] e0;
        public String f0;
        public String g0;
        public boolean a = false;
        public boolean b = false;
        public int e = -1;
        public int f = -1;
        public float g = -1.0f;
        public int h = -1;
        public int i = -1;
        public int j = -1;
        public int k = -1;
        public int l = -1;
        public int m = -1;
        public int n = -1;
        public int o = -1;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public float u = 0.5f;
        public float v = 0.5f;
        public String w = null;
        public int x = -1;
        public int y = 0;
        public float z = 0.0f;
        public int A = -1;
        public int B = -1;
        public int C = -1;
        public int D = -1;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = -1;
        public int I = -1;
        public int J = -1;
        public int K = -1;
        public int L = -1;
        public int M = -1;
        public int N = -1;
        public int O = -1;
        public float P = -1.0f;
        public float Q = -1.0f;
        public int R = 0;
        public int S = 0;
        public int T = 0;
        public int U = 0;
        public int V = -1;
        public int W = -1;
        public int X = -1;
        public int Y = -1;
        public float Z = 1.0f;
        public float a0 = 1.0f;
        public int b0 = -1;
        public int c0 = 0;
        public int d0 = -1;
        public boolean h0 = false;
        public boolean i0 = false;
        public boolean j0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            k0 = sparseIntArray;
            sparseIntArray.append(R$styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            k0.append(R$styleable.Layout_layout_constraintLeft_toRightOf, 25);
            k0.append(R$styleable.Layout_layout_constraintRight_toLeftOf, 28);
            k0.append(R$styleable.Layout_layout_constraintRight_toRightOf, 29);
            k0.append(R$styleable.Layout_layout_constraintTop_toTopOf, 35);
            k0.append(R$styleable.Layout_layout_constraintTop_toBottomOf, 34);
            k0.append(R$styleable.Layout_layout_constraintBottom_toTopOf, 4);
            k0.append(R$styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            k0.append(R$styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            k0.append(R$styleable.Layout_layout_editor_absoluteX, 6);
            k0.append(R$styleable.Layout_layout_editor_absoluteY, 7);
            k0.append(R$styleable.Layout_layout_constraintGuide_begin, 17);
            k0.append(R$styleable.Layout_layout_constraintGuide_end, 18);
            k0.append(R$styleable.Layout_layout_constraintGuide_percent, 19);
            k0.append(R$styleable.Layout_android_orientation, 26);
            k0.append(R$styleable.Layout_layout_constraintStart_toEndOf, 31);
            k0.append(R$styleable.Layout_layout_constraintStart_toStartOf, 32);
            k0.append(R$styleable.Layout_layout_constraintEnd_toStartOf, 10);
            k0.append(R$styleable.Layout_layout_constraintEnd_toEndOf, 9);
            k0.append(R$styleable.Layout_layout_goneMarginLeft, 13);
            k0.append(R$styleable.Layout_layout_goneMarginTop, 16);
            k0.append(R$styleable.Layout_layout_goneMarginRight, 14);
            k0.append(R$styleable.Layout_layout_goneMarginBottom, 11);
            k0.append(R$styleable.Layout_layout_goneMarginStart, 15);
            k0.append(R$styleable.Layout_layout_goneMarginEnd, 12);
            k0.append(R$styleable.Layout_layout_constraintVertical_weight, 38);
            k0.append(R$styleable.Layout_layout_constraintHorizontal_weight, 37);
            k0.append(R$styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            k0.append(R$styleable.Layout_layout_constraintVertical_chainStyle, 40);
            k0.append(R$styleable.Layout_layout_constraintHorizontal_bias, 20);
            k0.append(R$styleable.Layout_layout_constraintVertical_bias, 36);
            k0.append(R$styleable.Layout_layout_constraintDimensionRatio, 5);
            k0.append(R$styleable.Layout_layout_constraintLeft_creator, 76);
            k0.append(R$styleable.Layout_layout_constraintTop_creator, 76);
            k0.append(R$styleable.Layout_layout_constraintRight_creator, 76);
            k0.append(R$styleable.Layout_layout_constraintBottom_creator, 76);
            k0.append(R$styleable.Layout_layout_constraintBaseline_creator, 76);
            k0.append(R$styleable.Layout_android_layout_marginLeft, 23);
            k0.append(R$styleable.Layout_android_layout_marginRight, 27);
            k0.append(R$styleable.Layout_android_layout_marginStart, 30);
            k0.append(R$styleable.Layout_android_layout_marginEnd, 8);
            k0.append(R$styleable.Layout_android_layout_marginTop, 33);
            k0.append(R$styleable.Layout_android_layout_marginBottom, 2);
            k0.append(R$styleable.Layout_android_layout_width, 22);
            k0.append(R$styleable.Layout_android_layout_height, 21);
            k0.append(R$styleable.Layout_layout_constraintCircle, 61);
            k0.append(R$styleable.Layout_layout_constraintCircleRadius, 62);
            k0.append(R$styleable.Layout_layout_constraintCircleAngle, 63);
            k0.append(R$styleable.Layout_layout_constraintWidth_percent, 69);
            k0.append(R$styleable.Layout_layout_constraintHeight_percent, 70);
            k0.append(R$styleable.Layout_chainUseRtl, 71);
            k0.append(R$styleable.Layout_barrierDirection, 72);
            k0.append(R$styleable.Layout_barrierMargin, 73);
            k0.append(R$styleable.Layout_constraint_referenced_ids, 74);
            k0.append(R$styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public void a(b bVar) {
            this.a = bVar.a;
            this.c = bVar.c;
            this.b = bVar.b;
            this.d = bVar.d;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
            this.l = bVar.l;
            this.m = bVar.m;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.q = bVar.q;
            this.r = bVar.r;
            this.s = bVar.s;
            this.t = bVar.t;
            this.u = bVar.u;
            this.v = bVar.v;
            this.w = bVar.w;
            this.x = bVar.x;
            this.y = bVar.y;
            this.z = bVar.z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.a0 = bVar.a0;
            this.b0 = bVar.b0;
            this.c0 = bVar.c0;
            this.d0 = bVar.d0;
            this.g0 = bVar.g0;
            int[] iArr = bVar.e0;
            if (iArr != null) {
                this.e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.e0 = null;
            }
            this.f0 = bVar.f0;
            this.h0 = bVar.h0;
            this.i0 = bVar.i0;
            this.j0 = bVar.j0;
        }

        public void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Layout);
            this.b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                int i2 = k0.get(index);
                if (i2 == 80) {
                    this.h0 = typedArrayObtainStyledAttributes.getBoolean(index, this.h0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            int i3 = this.p;
                            int[] iArr = a7.d;
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, i3);
                            if (resourceId == -1) {
                                resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.p = resourceId;
                            break;
                        case 2:
                            this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.G);
                            break;
                        case 3:
                            int i4 = this.o;
                            int[] iArr2 = a7.d;
                            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, i4);
                            if (resourceId2 == -1) {
                                resourceId2 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.o = resourceId2;
                            break;
                        case 4:
                            int i5 = this.n;
                            int[] iArr3 = a7.d;
                            int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, i5);
                            if (resourceId3 == -1) {
                                resourceId3 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.n = resourceId3;
                            break;
                        case 5:
                            this.w = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 6:
                            this.A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.A);
                            break;
                        case 7:
                            this.B = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.B);
                            break;
                        case 8:
                            this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                            break;
                        case 9:
                            int i6 = this.t;
                            int[] iArr4 = a7.d;
                            int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, i6);
                            if (resourceId4 == -1) {
                                resourceId4 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.t = resourceId4;
                            break;
                        case 10:
                            int i7 = this.s;
                            int[] iArr5 = a7.d;
                            int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, i7);
                            if (resourceId5 == -1) {
                                resourceId5 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.s = resourceId5;
                            break;
                        case 11:
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        case 12:
                            this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        case 13:
                            this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        case 14:
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        case 15:
                            this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                            break;
                        case 16:
                            this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        case 17:
                            this.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                            break;
                        case 18:
                            this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                            break;
                        case 19:
                            this.g = typedArrayObtainStyledAttributes.getFloat(index, this.g);
                            break;
                        case 20:
                            this.u = typedArrayObtainStyledAttributes.getFloat(index, this.u);
                            break;
                        case 21:
                            this.d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.d);
                            break;
                        case 22:
                            this.c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.c);
                            break;
                        case 23:
                            this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                            break;
                        case 24:
                            int i8 = this.h;
                            int[] iArr6 = a7.d;
                            int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, i8);
                            if (resourceId6 == -1) {
                                resourceId6 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.h = resourceId6;
                            break;
                        case 25:
                            int i9 = this.i;
                            int[] iArr7 = a7.d;
                            int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, i9);
                            if (resourceId7 == -1) {
                                resourceId7 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.i = resourceId7;
                            break;
                        case 26:
                            this.C = typedArrayObtainStyledAttributes.getInt(index, this.C);
                            break;
                        case 27:
                            this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.E);
                            break;
                        case 28:
                            int i10 = this.j;
                            int[] iArr8 = a7.d;
                            int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, i10);
                            if (resourceId8 == -1) {
                                resourceId8 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.j = resourceId8;
                            break;
                        case 29:
                            int i11 = this.k;
                            int[] iArr9 = a7.d;
                            int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, i11);
                            if (resourceId9 == -1) {
                                resourceId9 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.k = resourceId9;
                            break;
                        case 30:
                            this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                            break;
                        case 31:
                            int i12 = this.q;
                            int[] iArr10 = a7.d;
                            int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, i12);
                            if (resourceId10 == -1) {
                                resourceId10 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.q = resourceId10;
                            break;
                        case 32:
                            int i13 = this.r;
                            int[] iArr11 = a7.d;
                            int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, i13);
                            if (resourceId11 == -1) {
                                resourceId11 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.r = resourceId11;
                            break;
                        case 33:
                            this.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.F);
                            break;
                        case 34:
                            int i14 = this.m;
                            int[] iArr12 = a7.d;
                            int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, i14);
                            if (resourceId12 == -1) {
                                resourceId12 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.m = resourceId12;
                            break;
                        case 35:
                            int i15 = this.l;
                            int[] iArr13 = a7.d;
                            int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, i15);
                            if (resourceId13 == -1) {
                                resourceId13 = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            this.l = resourceId13;
                            break;
                        case 36:
                            this.v = typedArrayObtainStyledAttributes.getFloat(index, this.v);
                            break;
                        case 37:
                            this.Q = typedArrayObtainStyledAttributes.getFloat(index, this.Q);
                            break;
                        case 38:
                            this.P = typedArrayObtainStyledAttributes.getFloat(index, this.P);
                            break;
                        case 39:
                            this.R = typedArrayObtainStyledAttributes.getInt(index, this.R);
                            break;
                        case 40:
                            this.S = typedArrayObtainStyledAttributes.getInt(index, this.S);
                            break;
                        default:
                            switch (i2) {
                                case 54:
                                    this.T = typedArrayObtainStyledAttributes.getInt(index, this.T);
                                    break;
                                case 55:
                                    this.U = typedArrayObtainStyledAttributes.getInt(index, this.U);
                                    break;
                                case 56:
                                    this.V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.V);
                                    break;
                                case 57:
                                    this.W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.W);
                                    break;
                                case 58:
                                    this.X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.X);
                                    break;
                                case 59:
                                    this.Y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Y);
                                    break;
                                default:
                                    switch (i2) {
                                        case 61:
                                            int i16 = this.x;
                                            int[] iArr14 = a7.d;
                                            int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, i16);
                                            if (resourceId14 == -1) {
                                                resourceId14 = typedArrayObtainStyledAttributes.getInt(index, -1);
                                            }
                                            this.x = resourceId14;
                                            break;
                                        case 62:
                                            this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.y);
                                            break;
                                        case 63:
                                            this.z = typedArrayObtainStyledAttributes.getFloat(index, this.z);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.a0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    break;
                                                case 72:
                                                    this.b0 = typedArrayObtainStyledAttributes.getInt(index, this.b0);
                                                    break;
                                                case 73:
                                                    this.c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.c0);
                                                    break;
                                                case 74:
                                                    this.f0 = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.j0 = typedArrayObtainStyledAttributes.getBoolean(index, this.j0);
                                                    break;
                                                case 76:
                                                    StringBuilder sbZ = jo.z("unused attribute 0x");
                                                    sbZ.append(Integer.toHexString(index));
                                                    sbZ.append("   ");
                                                    sbZ.append(k0.get(index));
                                                    Log.w("ConstraintSet", sbZ.toString());
                                                    break;
                                                case 77:
                                                    this.g0 = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    StringBuilder sbZ2 = jo.z("Unknown attribute 0x");
                                                    sbZ2.append(Integer.toHexString(index));
                                                    sbZ2.append("   ");
                                                    sbZ2.append(k0.get(index));
                                                    Log.w("ConstraintSet", sbZ2.toString());
                                                    break;
                                            }
                                    }
                            }
                    }
                } else {
                    this.i0 = typedArrayObtainStyledAttributes.getBoolean(index, this.i0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class c {
        public static SparseIntArray h;
        public boolean a = false;
        public int b = -1;
        public String c = null;
        public int d = -1;
        public int e = 0;
        public float f = Float.NaN;
        public float g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            h = sparseIntArray;
            sparseIntArray.append(R$styleable.Motion_motionPathRotate, 1);
            h.append(R$styleable.Motion_pathMotionArc, 2);
            h.append(R$styleable.Motion_transitionEasing, 3);
            h.append(R$styleable.Motion_drawPath, 4);
            h.append(R$styleable.Motion_animate_relativeTo, 5);
            h.append(R$styleable.Motion_motionStagger, 6);
        }

        public void a(c cVar) {
            this.a = cVar.a;
            this.b = cVar.b;
            this.c = cVar.c;
            this.d = cVar.d;
            this.e = cVar.e;
            this.g = cVar.g;
            this.f = cVar.f;
        }

        public void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Motion);
            this.a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (h.get(index)) {
                    case 1:
                        this.g = typedArrayObtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 2:
                        this.d = typedArrayObtainStyledAttributes.getInt(index, this.d);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.c = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.c = q4.c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.e = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        int i2 = this.b;
                        int[] iArr = a7.d;
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, i2);
                        if (resourceId == -1) {
                            resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        this.b = resourceId;
                        break;
                    case 6:
                        this.f = typedArrayObtainStyledAttributes.getFloat(index, this.f);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class d {
        public boolean a = false;
        public int b = 0;
        public int c = 0;
        public float d = 1.0f;
        public float e = Float.NaN;

        public void a(d dVar) {
            this.a = dVar.a;
            this.b = dVar.b;
            this.d = dVar.d;
            this.e = dVar.e;
            this.c = dVar.c;
        }

        public void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PropertySet);
            this.a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.PropertySet_android_alpha) {
                    this.d = typedArrayObtainStyledAttributes.getFloat(index, this.d);
                } else if (index == R$styleable.PropertySet_android_visibility) {
                    int i2 = typedArrayObtainStyledAttributes.getInt(index, this.b);
                    this.b = i2;
                    int[] iArr = a7.d;
                    this.b = a7.d[i2];
                } else if (index == R$styleable.PropertySet_visibilityMode) {
                    this.c = typedArrayObtainStyledAttributes.getInt(index, this.c);
                } else if (index == R$styleable.PropertySet_motionProgress) {
                    this.e = typedArrayObtainStyledAttributes.getFloat(index, this.e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class e {
        public static SparseIntArray n;
        public boolean a = false;
        public float b = 0.0f;
        public float c = 0.0f;
        public float d = 0.0f;
        public float e = 1.0f;
        public float f = 1.0f;
        public float g = Float.NaN;
        public float h = Float.NaN;
        public float i = 0.0f;
        public float j = 0.0f;
        public float k = 0.0f;
        public boolean l = false;
        public float m = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            n = sparseIntArray;
            sparseIntArray.append(R$styleable.Transform_android_rotation, 1);
            n.append(R$styleable.Transform_android_rotationX, 2);
            n.append(R$styleable.Transform_android_rotationY, 3);
            n.append(R$styleable.Transform_android_scaleX, 4);
            n.append(R$styleable.Transform_android_scaleY, 5);
            n.append(R$styleable.Transform_android_transformPivotX, 6);
            n.append(R$styleable.Transform_android_transformPivotY, 7);
            n.append(R$styleable.Transform_android_translationX, 8);
            n.append(R$styleable.Transform_android_translationY, 9);
            n.append(R$styleable.Transform_android_translationZ, 10);
            n.append(R$styleable.Transform_android_elevation, 11);
        }

        public void a(e eVar) {
            this.a = eVar.a;
            this.b = eVar.b;
            this.c = eVar.c;
            this.d = eVar.d;
            this.e = eVar.e;
            this.f = eVar.f;
            this.g = eVar.g;
            this.h = eVar.h;
            this.i = eVar.i;
            this.j = eVar.j;
            this.k = eVar.k;
            this.l = eVar.l;
            this.m = eVar.m;
        }

        public void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transform);
            this.a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (n.get(index)) {
                    case 1:
                        this.b = typedArrayObtainStyledAttributes.getFloat(index, this.b);
                        break;
                    case 2:
                        this.c = typedArrayObtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case 3:
                        this.d = typedArrayObtainStyledAttributes.getFloat(index, this.d);
                        break;
                    case 4:
                        this.e = typedArrayObtainStyledAttributes.getFloat(index, this.e);
                        break;
                    case 5:
                        this.f = typedArrayObtainStyledAttributes.getFloat(index, this.f);
                        break;
                    case 6:
                        this.g = typedArrayObtainStyledAttributes.getDimension(index, this.g);
                        break;
                    case 7:
                        this.h = typedArrayObtainStyledAttributes.getDimension(index, this.h);
                        break;
                    case 8:
                        this.i = typedArrayObtainStyledAttributes.getDimension(index, this.i);
                        break;
                    case 9:
                        this.j = typedArrayObtainStyledAttributes.getDimension(index, this.j);
                        break;
                    case 10:
                        this.k = typedArrayObtainStyledAttributes.getDimension(index, this.k);
                        break;
                    case 11:
                        this.l = true;
                        this.m = typedArrayObtainStyledAttributes.getDimension(index, this.m);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        sparseIntArray.append(R$styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        e.append(R$styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        e.append(R$styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        e.append(R$styleable.Constraint_layout_constraintRight_toRightOf, 30);
        e.append(R$styleable.Constraint_layout_constraintTop_toTopOf, 36);
        e.append(R$styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        e.append(R$styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        e.append(R$styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        e.append(R$styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        e.append(R$styleable.Constraint_layout_editor_absoluteX, 6);
        e.append(R$styleable.Constraint_layout_editor_absoluteY, 7);
        e.append(R$styleable.Constraint_layout_constraintGuide_begin, 17);
        e.append(R$styleable.Constraint_layout_constraintGuide_end, 18);
        e.append(R$styleable.Constraint_layout_constraintGuide_percent, 19);
        e.append(R$styleable.Constraint_android_orientation, 27);
        e.append(R$styleable.Constraint_layout_constraintStart_toEndOf, 32);
        e.append(R$styleable.Constraint_layout_constraintStart_toStartOf, 33);
        e.append(R$styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        e.append(R$styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        e.append(R$styleable.Constraint_layout_goneMarginLeft, 13);
        e.append(R$styleable.Constraint_layout_goneMarginTop, 16);
        e.append(R$styleable.Constraint_layout_goneMarginRight, 14);
        e.append(R$styleable.Constraint_layout_goneMarginBottom, 11);
        e.append(R$styleable.Constraint_layout_goneMarginStart, 15);
        e.append(R$styleable.Constraint_layout_goneMarginEnd, 12);
        e.append(R$styleable.Constraint_layout_constraintVertical_weight, 40);
        e.append(R$styleable.Constraint_layout_constraintHorizontal_weight, 39);
        e.append(R$styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        e.append(R$styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        e.append(R$styleable.Constraint_layout_constraintHorizontal_bias, 20);
        e.append(R$styleable.Constraint_layout_constraintVertical_bias, 37);
        e.append(R$styleable.Constraint_layout_constraintDimensionRatio, 5);
        e.append(R$styleable.Constraint_layout_constraintLeft_creator, 82);
        e.append(R$styleable.Constraint_layout_constraintTop_creator, 82);
        e.append(R$styleable.Constraint_layout_constraintRight_creator, 82);
        e.append(R$styleable.Constraint_layout_constraintBottom_creator, 82);
        e.append(R$styleable.Constraint_layout_constraintBaseline_creator, 82);
        e.append(R$styleable.Constraint_android_layout_marginLeft, 24);
        e.append(R$styleable.Constraint_android_layout_marginRight, 28);
        e.append(R$styleable.Constraint_android_layout_marginStart, 31);
        e.append(R$styleable.Constraint_android_layout_marginEnd, 8);
        e.append(R$styleable.Constraint_android_layout_marginTop, 34);
        e.append(R$styleable.Constraint_android_layout_marginBottom, 2);
        e.append(R$styleable.Constraint_android_layout_width, 23);
        e.append(R$styleable.Constraint_android_layout_height, 21);
        e.append(R$styleable.Constraint_android_visibility, 22);
        e.append(R$styleable.Constraint_android_alpha, 43);
        e.append(R$styleable.Constraint_android_elevation, 44);
        e.append(R$styleable.Constraint_android_rotationX, 45);
        e.append(R$styleable.Constraint_android_rotationY, 46);
        e.append(R$styleable.Constraint_android_rotation, 60);
        e.append(R$styleable.Constraint_android_scaleX, 47);
        e.append(R$styleable.Constraint_android_scaleY, 48);
        e.append(R$styleable.Constraint_android_transformPivotX, 49);
        e.append(R$styleable.Constraint_android_transformPivotY, 50);
        e.append(R$styleable.Constraint_android_translationX, 51);
        e.append(R$styleable.Constraint_android_translationY, 52);
        e.append(R$styleable.Constraint_android_translationZ, 53);
        e.append(R$styleable.Constraint_layout_constraintWidth_default, 54);
        e.append(R$styleable.Constraint_layout_constraintHeight_default, 55);
        e.append(R$styleable.Constraint_layout_constraintWidth_max, 56);
        e.append(R$styleable.Constraint_layout_constraintHeight_max, 57);
        e.append(R$styleable.Constraint_layout_constraintWidth_min, 58);
        e.append(R$styleable.Constraint_layout_constraintHeight_min, 59);
        e.append(R$styleable.Constraint_layout_constraintCircle, 61);
        e.append(R$styleable.Constraint_layout_constraintCircleRadius, 62);
        e.append(R$styleable.Constraint_layout_constraintCircleAngle, 63);
        e.append(R$styleable.Constraint_animate_relativeTo, 64);
        e.append(R$styleable.Constraint_transitionEasing, 65);
        e.append(R$styleable.Constraint_drawPath, 66);
        e.append(R$styleable.Constraint_transitionPathRotate, 67);
        e.append(R$styleable.Constraint_motionStagger, 79);
        e.append(R$styleable.Constraint_android_id, 38);
        e.append(R$styleable.Constraint_motionProgress, 68);
        e.append(R$styleable.Constraint_layout_constraintWidth_percent, 69);
        e.append(R$styleable.Constraint_layout_constraintHeight_percent, 70);
        e.append(R$styleable.Constraint_chainUseRtl, 71);
        e.append(R$styleable.Constraint_barrierDirection, 72);
        e.append(R$styleable.Constraint_barrierMargin, 73);
        e.append(R$styleable.Constraint_constraint_referenced_ids, 74);
        e.append(R$styleable.Constraint_barrierAllowsGoneWidgets, 75);
        e.append(R$styleable.Constraint_pathMotionArc, 76);
        e.append(R$styleable.Constraint_layout_constraintTag, 77);
        e.append(R$styleable.Constraint_visibilityMode, 78);
        e.append(R$styleable.Constraint_layout_constrainedWidth, 80);
        e.append(R$styleable.Constraint_layout_constrainedHeight, 81);
    }

    public void a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.c.containsKey(Integer.valueOf(id))) {
                StringBuilder sbZ = jo.z("id unknown ");
                sbZ.append(d0.h.F(childAt));
                Log.v("ConstraintSet", sbZ.toString());
            } else {
                if (this.b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.c.containsKey(Integer.valueOf(id))) {
                    y6.f(childAt, this.c.get(Integer.valueOf(id)).f);
                }
            }
        }
    }

    public void b(ConstraintLayout constraintLayout) {
        c(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void c(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.c.containsKey(Integer.valueOf(id))) {
                StringBuilder sbZ = jo.z("id unknown ");
                sbZ.append(d0.h.F(childAt));
                Log.w("ConstraintSet", sbZ.toString());
            } else {
                if (this.b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (this.c.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        a aVar = this.c.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            aVar.d.d0 = 1;
                        }
                        int i2 = aVar.d.d0;
                        if (i2 != -1 && i2 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(aVar.d.b0);
                            barrier.setMargin(aVar.d.c0);
                            barrier.setAllowsGoneWidget(aVar.d.j0);
                            b bVar = aVar.d;
                            int[] iArr = bVar.e0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = bVar.f0;
                                if (str != null) {
                                    bVar.e0 = e(barrier, str);
                                    barrier.setReferencedIds(aVar.d.e0);
                                }
                            }
                        }
                        ConstraintLayout.a aVar2 = (ConstraintLayout.a) childAt.getLayoutParams();
                        aVar2.a();
                        aVar.a(aVar2);
                        if (z) {
                            y6.f(childAt, aVar.f);
                        }
                        childAt.setLayoutParams(aVar2);
                        d dVar = aVar.b;
                        if (dVar.c == 0) {
                            childAt.setVisibility(dVar.b);
                        }
                        childAt.setAlpha(aVar.b.d);
                        childAt.setRotation(aVar.e.b);
                        childAt.setRotationX(aVar.e.c);
                        childAt.setRotationY(aVar.e.d);
                        childAt.setScaleX(aVar.e.e);
                        childAt.setScaleY(aVar.e.f);
                        if (!Float.isNaN(aVar.e.g)) {
                            childAt.setPivotX(aVar.e.g);
                        }
                        if (!Float.isNaN(aVar.e.h)) {
                            childAt.setPivotY(aVar.e.h);
                        }
                        childAt.setTranslationX(aVar.e.i);
                        childAt.setTranslationY(aVar.e.j);
                        childAt.setTranslationZ(aVar.e.k);
                        e eVar = aVar.e;
                        if (eVar.l) {
                            childAt.setElevation(eVar.m);
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            a aVar3 = this.c.get(num);
            int i3 = aVar3.d.d0;
            if (i3 != -1 && i3 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                b bVar2 = aVar3.d;
                int[] iArr2 = bVar2.e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = bVar2.f0;
                    if (str2 != null) {
                        bVar2.e0 = e(barrier2, str2);
                        barrier2.setReferencedIds(aVar3.d.e0);
                    }
                }
                barrier2.setType(aVar3.d.b0);
                barrier2.setMargin(aVar3.d.c0);
                ConstraintLayout.a aVarC = constraintLayout.generateDefaultLayoutParams();
                barrier2.r();
                aVar3.a(aVarC);
                constraintLayout.addView(barrier2, aVarC);
            }
            if (aVar3.d.a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.a aVarC2 = constraintLayout.generateDefaultLayoutParams();
                aVar3.a(aVarC2);
                constraintLayout.addView(guideline, aVarC2);
            }
        }
    }

    public void d(ConstraintLayout constraintLayout) {
        a7 a7Var = this;
        int childCount = constraintLayout.getChildCount();
        a7Var.c.clear();
        int i = 0;
        while (i < childCount) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.a aVar = (ConstraintLayout.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (a7Var.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!a7Var.c.containsKey(Integer.valueOf(id))) {
                a7Var.c.put(Integer.valueOf(id), new a());
            }
            a aVar2 = a7Var.c.get(Integer.valueOf(id));
            HashMap<String, y6> map = a7Var.a;
            HashMap<String, y6> map2 = new HashMap<>();
            Class<?> cls = childAt.getClass();
            for (String str : map.keySet()) {
                y6 y6Var = map.get(str);
                try {
                } catch (IllegalAccessException e2) {
                    e = e2;
                } catch (NoSuchMethodException e3) {
                    e = e3;
                } catch (InvocationTargetException e4) {
                    e = e4;
                }
                if (str.equals("BackgroundColor")) {
                    map2.put(str, new y6(y6Var, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                } else {
                    try {
                        map2.put(str, new y6(y6Var, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                    } catch (IllegalAccessException e5) {
                        e = e5;
                        e.printStackTrace();
                    } catch (NoSuchMethodException e6) {
                        e = e6;
                        e.printStackTrace();
                    } catch (InvocationTargetException e7) {
                        e = e7;
                        e.printStackTrace();
                    }
                }
            }
            aVar2.f = map2;
            aVar2.b(id, aVar);
            aVar2.b.b = childAt.getVisibility();
            aVar2.b.d = childAt.getAlpha();
            aVar2.e.b = childAt.getRotation();
            aVar2.e.c = childAt.getRotationX();
            aVar2.e.d = childAt.getRotationY();
            aVar2.e.e = childAt.getScaleX();
            aVar2.e.f = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != 0.0d || pivotY != 0.0d) {
                e eVar = aVar2.e;
                eVar.g = pivotX;
                eVar.h = pivotY;
            }
            aVar2.e.i = childAt.getTranslationX();
            aVar2.e.j = childAt.getTranslationY();
            aVar2.e.k = childAt.getTranslationZ();
            e eVar2 = aVar2.e;
            if (eVar2.l) {
                eVar2.m = childAt.getElevation();
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                b bVar = aVar2.d;
                bVar.j0 = barrier.n.F0;
                bVar.e0 = barrier.getReferencedIds();
                aVar2.d.b0 = barrier.getType();
                aVar2.d.c0 = barrier.getMargin();
            }
            i++;
            a7Var = this;
        }
    }

    public final int[] e(View view, String str) throws IllegalAccessException, IllegalArgumentException {
        int iIntValue;
        Object objD;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i = 0;
        int i2 = 0;
        while (i < strArrSplit.length) {
            String strTrim = strArrSplit[i].trim();
            try {
                iIntValue = R$id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (objD = ((ConstraintLayout) view.getParent()).d(0, strTrim)) != null && (objD instanceof Integer)) {
                iIntValue = ((Integer) objD).intValue();
            }
            iArr[i2] = iIntValue;
            i++;
            i2++;
        }
        return i2 != strArrSplit.length ? Arrays.copyOf(iArr, i2) : iArr;
    }

    public final a f(Context context, AttributeSet attributeSet) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Constraint);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index != R$styleable.Constraint_android_id && R$styleable.Constraint_android_layout_marginStart != index && R$styleable.Constraint_android_layout_marginEnd != index) {
                aVar.c.a = true;
                aVar.d.b = true;
                aVar.b.a = true;
                aVar.e.a = true;
            }
            switch (e.get(index)) {
                case 1:
                    b bVar = aVar.d;
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, bVar.p);
                    if (resourceId == -1) {
                        resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.p = resourceId;
                    break;
                case 2:
                    b bVar2 = aVar.d;
                    bVar2.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar2.G);
                    break;
                case 3:
                    b bVar3 = aVar.d;
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, bVar3.o);
                    if (resourceId2 == -1) {
                        resourceId2 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar3.o = resourceId2;
                    break;
                case 4:
                    b bVar4 = aVar.d;
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, bVar4.n);
                    if (resourceId3 == -1) {
                        resourceId3 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar4.n = resourceId3;
                    break;
                case 5:
                    aVar.d.w = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 6:
                    b bVar5 = aVar.d;
                    bVar5.A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, bVar5.A);
                    break;
                case 7:
                    b bVar6 = aVar.d;
                    bVar6.B = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, bVar6.B);
                    break;
                case 8:
                    b bVar7 = aVar.d;
                    bVar7.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar7.H);
                    break;
                case 9:
                    b bVar8 = aVar.d;
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, bVar8.t);
                    if (resourceId4 == -1) {
                        resourceId4 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar8.t = resourceId4;
                    break;
                case 10:
                    b bVar9 = aVar.d;
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, bVar9.s);
                    if (resourceId5 == -1) {
                        resourceId5 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar9.s = resourceId5;
                    break;
                case 11:
                    b bVar10 = aVar.d;
                    bVar10.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar10.M);
                    break;
                case 12:
                    b bVar11 = aVar.d;
                    bVar11.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar11.N);
                    break;
                case 13:
                    b bVar12 = aVar.d;
                    bVar12.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar12.J);
                    break;
                case 14:
                    b bVar13 = aVar.d;
                    bVar13.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar13.L);
                    break;
                case 15:
                    b bVar14 = aVar.d;
                    bVar14.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar14.O);
                    break;
                case 16:
                    b bVar15 = aVar.d;
                    bVar15.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar15.K);
                    break;
                case 17:
                    b bVar16 = aVar.d;
                    bVar16.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, bVar16.e);
                    break;
                case 18:
                    b bVar17 = aVar.d;
                    bVar17.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, bVar17.f);
                    break;
                case 19:
                    b bVar18 = aVar.d;
                    bVar18.g = typedArrayObtainStyledAttributes.getFloat(index, bVar18.g);
                    break;
                case 20:
                    b bVar19 = aVar.d;
                    bVar19.u = typedArrayObtainStyledAttributes.getFloat(index, bVar19.u);
                    break;
                case 21:
                    b bVar20 = aVar.d;
                    bVar20.d = typedArrayObtainStyledAttributes.getLayoutDimension(index, bVar20.d);
                    break;
                case 22:
                    d dVar = aVar.b;
                    dVar.b = typedArrayObtainStyledAttributes.getInt(index, dVar.b);
                    d dVar2 = aVar.b;
                    dVar2.b = d[dVar2.b];
                    break;
                case 23:
                    b bVar21 = aVar.d;
                    bVar21.c = typedArrayObtainStyledAttributes.getLayoutDimension(index, bVar21.c);
                    break;
                case 24:
                    b bVar22 = aVar.d;
                    bVar22.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar22.D);
                    break;
                case 25:
                    b bVar23 = aVar.d;
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, bVar23.h);
                    if (resourceId6 == -1) {
                        resourceId6 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar23.h = resourceId6;
                    break;
                case 26:
                    b bVar24 = aVar.d;
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, bVar24.i);
                    if (resourceId7 == -1) {
                        resourceId7 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar24.i = resourceId7;
                    break;
                case 27:
                    b bVar25 = aVar.d;
                    bVar25.C = typedArrayObtainStyledAttributes.getInt(index, bVar25.C);
                    break;
                case 28:
                    b bVar26 = aVar.d;
                    bVar26.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar26.E);
                    break;
                case 29:
                    b bVar27 = aVar.d;
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, bVar27.j);
                    if (resourceId8 == -1) {
                        resourceId8 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar27.j = resourceId8;
                    break;
                case 30:
                    b bVar28 = aVar.d;
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, bVar28.k);
                    if (resourceId9 == -1) {
                        resourceId9 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar28.k = resourceId9;
                    break;
                case 31:
                    b bVar29 = aVar.d;
                    bVar29.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar29.I);
                    break;
                case 32:
                    b bVar30 = aVar.d;
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, bVar30.q);
                    if (resourceId10 == -1) {
                        resourceId10 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar30.q = resourceId10;
                    break;
                case 33:
                    b bVar31 = aVar.d;
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, bVar31.r);
                    if (resourceId11 == -1) {
                        resourceId11 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar31.r = resourceId11;
                    break;
                case 34:
                    b bVar32 = aVar.d;
                    bVar32.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar32.F);
                    break;
                case 35:
                    b bVar33 = aVar.d;
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, bVar33.m);
                    if (resourceId12 == -1) {
                        resourceId12 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar33.m = resourceId12;
                    break;
                case 36:
                    b bVar34 = aVar.d;
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, bVar34.l);
                    if (resourceId13 == -1) {
                        resourceId13 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar34.l = resourceId13;
                    break;
                case 37:
                    b bVar35 = aVar.d;
                    bVar35.v = typedArrayObtainStyledAttributes.getFloat(index, bVar35.v);
                    break;
                case 38:
                    aVar.a = typedArrayObtainStyledAttributes.getResourceId(index, aVar.a);
                    break;
                case 39:
                    b bVar36 = aVar.d;
                    bVar36.Q = typedArrayObtainStyledAttributes.getFloat(index, bVar36.Q);
                    break;
                case 40:
                    b bVar37 = aVar.d;
                    bVar37.P = typedArrayObtainStyledAttributes.getFloat(index, bVar37.P);
                    break;
                case 41:
                    b bVar38 = aVar.d;
                    bVar38.R = typedArrayObtainStyledAttributes.getInt(index, bVar38.R);
                    break;
                case 42:
                    b bVar39 = aVar.d;
                    bVar39.S = typedArrayObtainStyledAttributes.getInt(index, bVar39.S);
                    break;
                case 43:
                    d dVar3 = aVar.b;
                    dVar3.d = typedArrayObtainStyledAttributes.getFloat(index, dVar3.d);
                    break;
                case 44:
                    e eVar = aVar.e;
                    eVar.l = true;
                    eVar.m = typedArrayObtainStyledAttributes.getDimension(index, eVar.m);
                    break;
                case 45:
                    e eVar2 = aVar.e;
                    eVar2.c = typedArrayObtainStyledAttributes.getFloat(index, eVar2.c);
                    break;
                case 46:
                    e eVar3 = aVar.e;
                    eVar3.d = typedArrayObtainStyledAttributes.getFloat(index, eVar3.d);
                    break;
                case 47:
                    e eVar4 = aVar.e;
                    eVar4.e = typedArrayObtainStyledAttributes.getFloat(index, eVar4.e);
                    break;
                case 48:
                    e eVar5 = aVar.e;
                    eVar5.f = typedArrayObtainStyledAttributes.getFloat(index, eVar5.f);
                    break;
                case 49:
                    e eVar6 = aVar.e;
                    eVar6.g = typedArrayObtainStyledAttributes.getDimension(index, eVar6.g);
                    break;
                case 50:
                    e eVar7 = aVar.e;
                    eVar7.h = typedArrayObtainStyledAttributes.getDimension(index, eVar7.h);
                    break;
                case 51:
                    e eVar8 = aVar.e;
                    eVar8.i = typedArrayObtainStyledAttributes.getDimension(index, eVar8.i);
                    break;
                case 52:
                    e eVar9 = aVar.e;
                    eVar9.j = typedArrayObtainStyledAttributes.getDimension(index, eVar9.j);
                    break;
                case 53:
                    e eVar10 = aVar.e;
                    eVar10.k = typedArrayObtainStyledAttributes.getDimension(index, eVar10.k);
                    break;
                case 54:
                    b bVar40 = aVar.d;
                    bVar40.T = typedArrayObtainStyledAttributes.getInt(index, bVar40.T);
                    break;
                case 55:
                    b bVar41 = aVar.d;
                    bVar41.U = typedArrayObtainStyledAttributes.getInt(index, bVar41.U);
                    break;
                case 56:
                    b bVar42 = aVar.d;
                    bVar42.V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar42.V);
                    break;
                case 57:
                    b bVar43 = aVar.d;
                    bVar43.W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar43.W);
                    break;
                case 58:
                    b bVar44 = aVar.d;
                    bVar44.X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar44.X);
                    break;
                case 59:
                    b bVar45 = aVar.d;
                    bVar45.Y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar45.Y);
                    break;
                case 60:
                    e eVar11 = aVar.e;
                    eVar11.b = typedArrayObtainStyledAttributes.getFloat(index, eVar11.b);
                    break;
                case 61:
                    b bVar46 = aVar.d;
                    int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, bVar46.x);
                    if (resourceId14 == -1) {
                        resourceId14 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    bVar46.x = resourceId14;
                    break;
                case 62:
                    b bVar47 = aVar.d;
                    bVar47.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar47.y);
                    break;
                case 63:
                    b bVar48 = aVar.d;
                    bVar48.z = typedArrayObtainStyledAttributes.getFloat(index, bVar48.z);
                    break;
                case 64:
                    c cVar = aVar.c;
                    int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, cVar.b);
                    if (resourceId15 == -1) {
                        resourceId15 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    cVar.b = resourceId15;
                    break;
                case 65:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        aVar.c.c = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        aVar.c.c = q4.c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    aVar.c.e = typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 67:
                    c cVar2 = aVar.c;
                    cVar2.g = typedArrayObtainStyledAttributes.getFloat(index, cVar2.g);
                    break;
                case 68:
                    d dVar4 = aVar.b;
                    dVar4.e = typedArrayObtainStyledAttributes.getFloat(index, dVar4.e);
                    break;
                case 69:
                    aVar.d.Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.d.a0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    b bVar49 = aVar.d;
                    bVar49.b0 = typedArrayObtainStyledAttributes.getInt(index, bVar49.b0);
                    break;
                case 73:
                    b bVar50 = aVar.d;
                    bVar50.c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, bVar50.c0);
                    break;
                case 74:
                    aVar.d.f0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 75:
                    b bVar51 = aVar.d;
                    bVar51.j0 = typedArrayObtainStyledAttributes.getBoolean(index, bVar51.j0);
                    break;
                case 76:
                    c cVar3 = aVar.c;
                    cVar3.d = typedArrayObtainStyledAttributes.getInt(index, cVar3.d);
                    break;
                case 77:
                    aVar.d.g0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 78:
                    d dVar5 = aVar.b;
                    dVar5.c = typedArrayObtainStyledAttributes.getInt(index, dVar5.c);
                    break;
                case 79:
                    c cVar4 = aVar.c;
                    cVar4.f = typedArrayObtainStyledAttributes.getFloat(index, cVar4.f);
                    break;
                case 80:
                    b bVar52 = aVar.d;
                    bVar52.h0 = typedArrayObtainStyledAttributes.getBoolean(index, bVar52.h0);
                    break;
                case 81:
                    b bVar53 = aVar.d;
                    bVar53.i0 = typedArrayObtainStyledAttributes.getBoolean(index, bVar53.i0);
                    break;
                case 82:
                    StringBuilder sbZ = jo.z("unused attribute 0x");
                    sbZ.append(Integer.toHexString(index));
                    sbZ.append("   ");
                    sbZ.append(e.get(index));
                    Log.w("ConstraintSet", sbZ.toString());
                    break;
                default:
                    StringBuilder sbZ2 = jo.z("Unknown attribute 0x");
                    sbZ2.append(Integer.toHexString(index));
                    sbZ2.append("   ");
                    sbZ2.append(e.get(index));
                    Log.w("ConstraintSet", sbZ2.toString());
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    public final a g(int i) {
        if (!this.c.containsKey(Integer.valueOf(i))) {
            this.c.put(Integer.valueOf(i), new a());
        }
        return this.c.get(Integer.valueOf(i));
    }

    public void h(Context context, int i) throws XmlPullParserException, Resources.NotFoundException, IOException {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a aVarF = f(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarF.d.a = true;
                    }
                    this.c.put(Integer.valueOf(aVarF.a), aVarF);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x0178, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i(android.content.Context r9, org.xmlpull.v1.XmlPullParser r10) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a7.i(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }
}
