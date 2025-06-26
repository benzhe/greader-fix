package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.widget.R$styleable;
import defpackage.d0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.apache.commons.codec.binary.Base64;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class y6 {
    public String a;
    public a b;
    public int c;
    public float d;
    public String e;
    public boolean f;
    public int g;

    public enum a {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE
    }

    public y6(String str, a aVar, Object obj) {
        this.a = str;
        this.b = aVar;
        h(obj);
    }

    public static int a(int i) {
        int i2 = (i & (~(i >> 31))) - 255;
        return (i2 & (i2 >> 31)) + Base64.BASELENGTH;
    }

    public static void e(Context context, XmlPullParser xmlPullParser, HashMap<String, y6> map) {
        a aVar;
        Object string;
        a aVar2 = a.DIMENSION_TYPE;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.CustomAttribute);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string2 = null;
        Object objValueOf = null;
        a aVar3 = null;
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R$styleable.CustomAttribute_attributeName) {
                string2 = typedArrayObtainStyledAttributes.getString(index);
                if (string2 != null && string2.length() > 0) {
                    string2 = Character.toUpperCase(string2.charAt(0)) + string2.substring(1);
                }
            } else if (index == R$styleable.CustomAttribute_customBoolean) {
                objValueOf = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                aVar3 = a.BOOLEAN_TYPE;
            } else {
                if (index == R$styleable.CustomAttribute_customColorValue) {
                    aVar = a.COLOR_TYPE;
                    string = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == R$styleable.CustomAttribute_customColorDrawableValue) {
                    aVar = a.COLOR_DRAWABLE_TYPE;
                    string = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else {
                    if (index == R$styleable.CustomAttribute_customPixelDimension) {
                        objValueOf = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                    } else if (index == R$styleable.CustomAttribute_customDimension) {
                        objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                    } else if (index == R$styleable.CustomAttribute_customFloatValue) {
                        aVar = a.FLOAT_TYPE;
                        string = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                    } else if (index == R$styleable.CustomAttribute_customIntegerValue) {
                        aVar = a.INT_TYPE;
                        string = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                    } else if (index == R$styleable.CustomAttribute_customStringValue) {
                        aVar = a.STRING_TYPE;
                        string = typedArrayObtainStyledAttributes.getString(index);
                    }
                    aVar3 = aVar2;
                }
                Object obj = string;
                aVar3 = aVar;
                objValueOf = obj;
            }
        }
        if (string2 != null && objValueOf != null) {
            map.put(string2, new y6(string2, aVar3, objValueOf));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void f(View view, HashMap<String, y6> map) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            y6 y6Var = map.get(str);
            String strN = jo.n("set", str);
            try {
                switch (y6Var.b) {
                    case INT_TYPE:
                        cls.getMethod(strN, Integer.TYPE).invoke(view, Integer.valueOf(y6Var.c));
                        break;
                    case FLOAT_TYPE:
                        cls.getMethod(strN, Float.TYPE).invoke(view, Float.valueOf(y6Var.d));
                        break;
                    case COLOR_TYPE:
                        cls.getMethod(strN, Integer.TYPE).invoke(view, Integer.valueOf(y6Var.g));
                        break;
                    case COLOR_DRAWABLE_TYPE:
                        Method method = cls.getMethod(strN, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(y6Var.g);
                        method.invoke(view, colorDrawable);
                        break;
                    case STRING_TYPE:
                        cls.getMethod(strN, CharSequence.class).invoke(view, y6Var.e);
                        break;
                    case BOOLEAN_TYPE:
                        cls.getMethod(strN, Boolean.TYPE).invoke(view, Boolean.valueOf(y6Var.f));
                        break;
                    case DIMENSION_TYPE:
                        cls.getMethod(strN, Float.TYPE).invoke(view, Float.valueOf(y6Var.d));
                        break;
                }
            } catch (IllegalAccessException e) {
                StringBuilder sbC = jo.C(" Custom Attribute \"", str, "\" not found on ");
                sbC.append(cls.getName());
                Log.e("TransitionLayout", sbC.toString());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Log.e("TransitionLayout", e2.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(cls.getName());
                sb.append(" must have a method ");
                sb.append(strN);
                Log.e("TransitionLayout", sb.toString());
            } catch (InvocationTargetException e3) {
                StringBuilder sbC2 = jo.C(" Custom Attribute \"", str, "\" not found on ");
                sbC2.append(cls.getName());
                Log.e("TransitionLayout", sbC2.toString());
                e3.printStackTrace();
            }
        }
    }

    public float b() {
        switch (this.b) {
            case INT_TYPE:
                return this.c;
            case FLOAT_TYPE:
                return this.d;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case STRING_TYPE:
                throw new RuntimeException("Cannot interpolate String");
            case BOOLEAN_TYPE:
                return this.f ? 0.0f : 1.0f;
            case DIMENSION_TYPE:
                return this.d;
            default:
                return Float.NaN;
        }
    }

    public void c(float[] fArr) {
        switch (this.b) {
            case INT_TYPE:
                fArr[0] = this.c;
                return;
            case FLOAT_TYPE:
                fArr[0] = this.d;
                return;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                int i = this.g;
                int i2 = (i >> 24) & Base64.BASELENGTH;
                int i3 = (i >> 16) & Base64.BASELENGTH;
                int i4 = (i >> 8) & Base64.BASELENGTH;
                int i5 = i & Base64.BASELENGTH;
                float fPow = (float) Math.pow(i3 / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(i4 / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow(i5 / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = i2 / 255.0f;
                return;
            case STRING_TYPE:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case BOOLEAN_TYPE:
                fArr[0] = this.f ? 0.0f : 1.0f;
                return;
            case DIMENSION_TYPE:
                fArr[0] = this.d;
                return;
            default:
                return;
        }
    }

    public int d() {
        int iOrdinal = this.b.ordinal();
        return (iOrdinal == 2 || iOrdinal == 3) ? 4 : 1;
    }

    public void g(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        StringBuilder sbZ = jo.z("set");
        sbZ.append(this.a);
        String string = sbZ.toString();
        try {
            boolean z = true;
            switch (this.b) {
                case INT_TYPE:
                    cls.getMethod(string, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case FLOAT_TYPE:
                    cls.getMethod(string, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case COLOR_TYPE:
                    cls.getMethod(string, Integer.TYPE).invoke(view, Integer.valueOf((a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case COLOR_DRAWABLE_TYPE:
                    Method method = cls.getMethod(string, Drawable.class);
                    int iA = (a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(iA);
                    method.invoke(view, colorDrawable);
                    return;
                case STRING_TYPE:
                    throw new RuntimeException("unable to interpolate strings " + this.a);
                case BOOLEAN_TYPE:
                    Method method2 = cls.getMethod(string, Boolean.TYPE);
                    Object[] objArr = new Object[1];
                    if (fArr[0] <= 0.5f) {
                        z = false;
                    }
                    objArr[0] = Boolean.valueOf(z);
                    method2.invoke(view, objArr);
                    return;
                case DIMENSION_TYPE:
                    cls.getMethod(string, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e) {
            StringBuilder sbC = jo.C("cannot access method ", string, "on View \"");
            sbC.append(d0.h.F(view));
            sbC.append("\"");
            Log.e("TransitionLayout", sbC.toString());
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            StringBuilder sbC2 = jo.C("no method ", string, "on View \"");
            sbC2.append(d0.h.F(view));
            sbC2.append("\"");
            Log.e("TransitionLayout", sbC2.toString());
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public void h(Object obj) {
        switch (this.b) {
            case INT_TYPE:
                this.c = ((Integer) obj).intValue();
                break;
            case FLOAT_TYPE:
                this.d = ((Float) obj).floatValue();
                break;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                this.g = ((Integer) obj).intValue();
                break;
            case STRING_TYPE:
                this.e = (String) obj;
                break;
            case BOOLEAN_TYPE:
                this.f = ((Boolean) obj).booleanValue();
                break;
            case DIMENSION_TYPE:
                this.d = ((Float) obj).floatValue();
                break;
        }
    }

    public y6(y6 y6Var, Object obj) {
        this.a = y6Var.a;
        this.b = y6Var.b;
        h(obj);
    }
}
