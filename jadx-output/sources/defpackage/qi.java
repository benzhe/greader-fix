package defpackage;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import defpackage.d0;
import java.util.ArrayList;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class qi {

    public static class a implements TypeEvaluator<f8[]> {
        public f8[] a;

        @Override // android.animation.TypeEvaluator
        public f8[] evaluate(float f, f8[] f8VarArr, f8[] f8VarArr2) {
            f8[] f8VarArr3 = f8VarArr;
            f8[] f8VarArr4 = f8VarArr2;
            if (!d0.h.f(f8VarArr3, f8VarArr4)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (!d0.h.f(this.a, f8VarArr3)) {
                this.a = d0.h.x(f8VarArr3);
            }
            for (int i = 0; i < f8VarArr3.length; i++) {
                f8 f8Var = this.a[i];
                f8 f8Var2 = f8VarArr3[i];
                f8 f8Var3 = f8VarArr4[i];
                Objects.requireNonNull(f8Var);
                f8Var.a = f8Var2.a;
                int i2 = 0;
                while (true) {
                    float[] fArr = f8Var2.b;
                    if (i2 < fArr.length) {
                        f8Var.b[i2] = (f8Var3.b[i2] * f) + ((1.0f - f) * fArr[i2]);
                        i2++;
                    }
                }
            }
            return this.a;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:181:0x034d, code lost:
    
        if (r26 == null) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x034f, code lost:
    
        if (r13 == null) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0351, code lost:
    
        r1 = new android.animation.Animator[r13.size()];
        r2 = r13.iterator();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0360, code lost:
    
        if (r2.hasNext() == false) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0362, code lost:
    
        r1[r3] = (android.animation.Animator) r2.next();
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x036e, code lost:
    
        if (r27 != 0) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0370, code lost:
    
        r26.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0374, code lost:
    
        r26.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0377, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator a(android.content.Context r21, android.content.res.Resources r22, android.content.res.Resources.Theme r23, org.xmlpull.v1.XmlPullParser r24, android.util.AttributeSet r25, android.animation.AnimatorSet r26, int r27, float r28) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 888
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qi.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    public static Keyframe b(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    public static PropertyValuesHolder c(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder propertyValuesHolderOfInt;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        boolean z = typedValuePeekValue != null;
        int i4 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i3);
        boolean z2 = typedValuePeekValue2 != null;
        int i5 = z2 ? typedValuePeekValue2.type : 0;
        if (i == 4) {
            i = ((z && d(i4)) || (z2 && d(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i != 2) {
            ri riVar = i == 3 ? ri.a : null;
            if (z3) {
                if (z) {
                    float dimension = i4 == 5 ? typedArray.getDimension(i2, 0.0f) : typedArray.getFloat(i2, 0.0f);
                    if (z2) {
                        propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                    } else {
                        propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension);
                    }
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                }
            } else {
                if (!z) {
                    if (z2) {
                        propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : d(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                    }
                    if (propertyValuesHolder == null && riVar != null) {
                        propertyValuesHolder.setEvaluator(riVar);
                        return propertyValuesHolder;
                    }
                }
                int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, 0.0f) : d(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
                if (z2) {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : d(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2);
                }
            }
            propertyValuesHolder = propertyValuesHolderOfInt;
            return propertyValuesHolder == null ? propertyValuesHolder : propertyValuesHolder;
        }
        String string = typedArray.getString(i2);
        String string2 = typedArray.getString(i3);
        f8[] f8VarArrV = d0.h.v(string);
        f8[] f8VarArrV2 = d0.h.v(string2);
        if (f8VarArrV == null && f8VarArrV2 == null) {
            return null;
        }
        if (f8VarArrV == null) {
            if (f8VarArrV2 != null) {
                return PropertyValuesHolder.ofObject(str, new a(), f8VarArrV2);
            }
            return null;
        }
        a aVar = new a();
        if (f8VarArrV2 == null) {
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, f8VarArrV);
        } else {
            if (!d0.h.f(f8VarArrV, f8VarArrV2)) {
                throw new InflateException(" Can't morph from " + string + " to " + string2);
            }
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, f8VarArrV, f8VarArrV2);
        }
        return propertyValuesHolderOfObject;
    }

    public static boolean d(int i) {
        return i >= 28 && i <= 31;
    }

    public static ValueAnimator e(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ValueAnimator valueAnimator2;
        TypedArray typedArray;
        TypedArray typedArray2;
        ValueAnimator valueAnimator3;
        TypedArray typedArrayJ = c8.j(resources, theme, attributeSet, ni.g);
        TypedArray typedArrayJ2 = c8.j(resources, theme, attributeSet, ni.k);
        ValueAnimator valueAnimator4 = valueAnimator == null ? new ValueAnimator() : valueAnimator;
        long j = c8.h(xmlPullParser, "duration") ? typedArrayJ.getInt(1, 300) : 300;
        int resourceId = 0;
        long j2 = !c8.h(xmlPullParser, "startOffset") ? 0 : typedArrayJ.getInt(2, 0);
        int i = !c8.h(xmlPullParser, "valueType") ? 4 : typedArrayJ.getInt(7, 4);
        if (c8.h(xmlPullParser, "valueFrom") && c8.h(xmlPullParser, "valueTo")) {
            if (i == 4) {
                TypedValue typedValuePeekValue = typedArrayJ.peekValue(5);
                boolean z = typedValuePeekValue != null;
                int i2 = z ? typedValuePeekValue.type : 0;
                TypedValue typedValuePeekValue2 = typedArrayJ.peekValue(6);
                boolean z2 = typedValuePeekValue2 != null;
                i = ((z && d(i2)) || (z2 && d(z2 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder propertyValuesHolderC = c(typedArrayJ, i, 5, 6, "");
            if (propertyValuesHolderC != null) {
                valueAnimator4.setValues(propertyValuesHolderC);
            }
        }
        valueAnimator4.setDuration(j);
        valueAnimator4.setStartDelay(j2);
        valueAnimator4.setRepeatCount(!c8.h(xmlPullParser, "repeatCount") ? 0 : typedArrayJ.getInt(3, 0));
        valueAnimator4.setRepeatMode(!c8.h(xmlPullParser, "repeatMode") ? 1 : typedArrayJ.getInt(4, 1));
        if (typedArrayJ2 != null) {
            ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator4;
            String strD = c8.d(typedArrayJ2, xmlPullParser, "pathData", 1);
            if (strD != null) {
                String strD2 = c8.d(typedArrayJ2, xmlPullParser, "propertyXName", 2);
                String strD3 = c8.d(typedArrayJ2, xmlPullParser, "propertyYName", 3);
                if (strD2 == null && strD3 == null) {
                    throw new InflateException(typedArrayJ2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path pathW = d0.h.w(strD);
                float f2 = 0.5f * f;
                PathMeasure pathMeasure = new PathMeasure(pathW, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float length = 0.0f;
                do {
                    length += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(length));
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(pathW, false);
                int iMin = Math.min(100, ((int) (length / f2)) + 1);
                float[] fArr = new float[iMin];
                float[] fArr2 = new float[iMin];
                float[] fArr3 = new float[2];
                float f3 = length / (iMin - 1);
                valueAnimator2 = valueAnimator4;
                typedArray = typedArrayJ;
                int i3 = 0;
                float f4 = 0.0f;
                while (true) {
                    if (resourceId >= iMin) {
                        break;
                    }
                    int i4 = iMin;
                    pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i3)).floatValue(), fArr3, null);
                    fArr[resourceId] = fArr3[0];
                    fArr2[resourceId] = fArr3[1];
                    f4 += f3;
                    int i5 = i3 + 1;
                    if (i5 < arrayList.size() && f4 > ((Float) arrayList.get(i5)).floatValue()) {
                        pathMeasure2.nextContour();
                        i3 = i5;
                    }
                    resourceId++;
                    iMin = i4;
                }
                PropertyValuesHolder propertyValuesHolderOfFloat = strD2 != null ? PropertyValuesHolder.ofFloat(strD2, fArr) : null;
                PropertyValuesHolder propertyValuesHolderOfFloat2 = strD3 != null ? PropertyValuesHolder.ofFloat(strD3, fArr2) : null;
                if (propertyValuesHolderOfFloat == null) {
                    resourceId = 0;
                    objectAnimator.setValues(propertyValuesHolderOfFloat2);
                } else {
                    resourceId = 0;
                    if (propertyValuesHolderOfFloat2 == null) {
                        objectAnimator.setValues(propertyValuesHolderOfFloat);
                    } else {
                        objectAnimator.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
                    }
                }
            } else {
                valueAnimator2 = valueAnimator4;
                typedArray = typedArrayJ;
                objectAnimator.setPropertyName(c8.d(typedArrayJ2, xmlPullParser, "propertyName", 0));
            }
        } else {
            valueAnimator2 = valueAnimator4;
            typedArray = typedArrayJ;
        }
        if (c8.h(xmlPullParser, "interpolator")) {
            typedArray2 = typedArray;
            resourceId = typedArray2.getResourceId(resourceId, resourceId);
        } else {
            typedArray2 = typedArray;
        }
        if (resourceId > 0) {
            valueAnimator3 = valueAnimator2;
            valueAnimator3.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        } else {
            valueAnimator3 = valueAnimator2;
        }
        typedArray2.recycle();
        if (typedArrayJ2 != null) {
            typedArrayJ2.recycle();
        }
        return valueAnimator3;
    }
}
