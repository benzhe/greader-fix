package com.google.ads.mediation;

import defpackage.is0;
import defpackage.jo;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

@Deprecated
/* loaded from: classes.dex */
public class MediationServerParameters {

    public static final class MappingException extends Exception {
        public MappingException(String str) {
            super(str);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Parameter {
        String name();

        boolean required() default true;
    }

    public void load(Map<String, String> map) throws IllegalAccessException, SecurityException, MappingException, IllegalArgumentException {
        HashMap map2 = new HashMap();
        for (Field field : getClass().getFields()) {
            Parameter parameter = (Parameter) field.getAnnotation(Parameter.class);
            if (parameter != null) {
                map2.put(parameter.name(), field);
            }
        }
        if (map2.isEmpty()) {
            is0.zzez("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Field field2 = (Field) map2.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException unused) {
                    String key = entry.getKey();
                    StringBuilder sb = new StringBuilder(jo.x(key, 49));
                    sb.append("Server option \"");
                    sb.append(key);
                    sb.append("\" could not be set: Illegal Access");
                    is0.zzez(sb.toString());
                } catch (IllegalArgumentException unused2) {
                    String key2 = entry.getKey();
                    StringBuilder sb2 = new StringBuilder(jo.x(key2, 43));
                    sb2.append("Server option \"");
                    sb2.append(key2);
                    sb2.append("\" could not be set: Bad Type");
                    is0.zzez(sb2.toString());
                }
            } else {
                String key3 = entry.getKey();
                String value = entry.getValue();
                StringBuilder sbY = jo.y(jo.x(value, jo.x(key3, 31)), "Unexpected server option: ", key3, " = \"", value);
                sbY.append("\"");
                is0.zzdz(sbY.toString());
            }
        }
        StringBuilder sb3 = new StringBuilder();
        for (Field field3 : map2.values()) {
            if (((Parameter) field3.getAnnotation(Parameter.class)).required()) {
                String strValueOf = String.valueOf(((Parameter) field3.getAnnotation(Parameter.class)).name());
                is0.zzez(strValueOf.length() != 0 ? "Required server option missing: ".concat(strValueOf) : new String("Required server option missing: "));
                if (sb3.length() > 0) {
                    sb3.append(", ");
                }
                sb3.append(((Parameter) field3.getAnnotation(Parameter.class)).name());
            }
        }
        if (sb3.length() > 0) {
            String strValueOf2 = String.valueOf(sb3.toString());
            throw new MappingException(strValueOf2.length() != 0 ? "Required server option(s) missing: ".concat(strValueOf2) : new String("Required server option(s) missing: "));
        }
    }
}
