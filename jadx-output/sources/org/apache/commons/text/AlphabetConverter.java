package org.apache.commons.text;

import defpackage.jo;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.lang3.ArrayUtils;

/* loaded from: classes2.dex */
public final class AlphabetConverter {
    private static final String ARROW = " -> ";
    private final int encodedLetterLength;
    private final Map<String, String> encodedToOriginal;
    private final Map<Integer, String> originalToEncoded;

    private AlphabetConverter(Map<Integer, String> map, Map<String, String> map2, int i) {
        this.originalToEncoded = map;
        this.encodedToOriginal = map2;
        this.encodedLetterLength = i;
    }

    private void addSingleEncoding(int i, String str, Collection<Integer> collection, Iterator<Integer> it, Map<Integer, String> map) {
        if (i > 0) {
            Iterator<Integer> it2 = collection.iterator();
            while (it2.hasNext()) {
                int iIntValue = it2.next().intValue();
                if (!it.hasNext()) {
                    return;
                }
                if (i != this.encodedLetterLength || !map.containsKey(Integer.valueOf(iIntValue))) {
                    StringBuilder sbZ = jo.z(str);
                    sbZ.append(codePointToString(iIntValue));
                    addSingleEncoding(i - 1, sbZ.toString(), collection, it, map);
                }
            }
            return;
        }
        Integer next = it.next();
        while (true) {
            Integer num = next;
            if (!map.containsKey(num)) {
                String strCodePointToString = codePointToString(num.intValue());
                this.originalToEncoded.put(num, str);
                this.encodedToOriginal.put(str, strCodePointToString);
                return;
            } else {
                String strCodePointToString2 = codePointToString(num.intValue());
                this.originalToEncoded.put(num, strCodePointToString2);
                this.encodedToOriginal.put(strCodePointToString2, strCodePointToString2);
                if (!it.hasNext()) {
                    return;
                } else {
                    next = it.next();
                }
            }
        }
    }

    private static String codePointToString(int i) {
        return Character.charCount(i) == 1 ? String.valueOf((char) i) : new String(Character.toChars(i));
    }

    private static Integer[] convertCharsToIntegers(Character[] chArr) {
        if (ArrayUtils.isEmpty(chArr)) {
            return ArrayUtils.EMPTY_INTEGER_OBJECT_ARRAY;
        }
        Integer[] numArr = new Integer[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            numArr[i] = Integer.valueOf(chArr[i].charValue());
        }
        return numArr;
    }

    public static AlphabetConverter createConverter(Integer[] numArr, Integer[] numArr2, Integer[] numArr3) {
        Integer num;
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(numArr));
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(Arrays.asList(numArr2));
        LinkedHashSet linkedHashSet3 = new LinkedHashSet(Arrays.asList(numArr3));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        HashMap map = new HashMap();
        Iterator it = linkedHashSet3.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            if (!linkedHashSet.contains(Integer.valueOf(iIntValue))) {
                throw new IllegalArgumentException(jo.s(jo.z("Can not use 'do not encode' list because original alphabet does not contain '"), codePointToString(iIntValue), "'"));
            }
            if (!linkedHashSet2.contains(Integer.valueOf(iIntValue))) {
                throw new IllegalArgumentException(jo.s(jo.z("Can not use 'do not encode' list because encoding alphabet does not contain '"), codePointToString(iIntValue), "'"));
            }
            map.put(Integer.valueOf(iIntValue), codePointToString(iIntValue));
        }
        if (linkedHashSet2.size() < linkedHashSet.size()) {
            if (linkedHashSet2.size() - linkedHashSet3.size() < 2) {
                StringBuilder sbZ = jo.z("Must have at least two encoding characters (excluding those in the 'do not encode' list), but has ");
                sbZ.append(linkedHashSet2.size() - linkedHashSet3.size());
                throw new IllegalArgumentException(sbZ.toString());
            }
            int size = (linkedHashSet.size() - linkedHashSet3.size()) / (linkedHashSet2.size() - linkedHashSet3.size());
            int i = 1;
            while (size / linkedHashSet2.size() >= 1) {
                size /= linkedHashSet2.size();
                i++;
            }
            int i2 = i + 1;
            AlphabetConverter alphabetConverter = new AlphabetConverter(linkedHashMap, linkedHashMap2, i2);
            alphabetConverter.addSingleEncoding(i2, "", linkedHashSet2, linkedHashSet.iterator(), map);
            return alphabetConverter;
        }
        Iterator it2 = linkedHashSet2.iterator();
        Iterator it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            int iIntValue2 = ((Integer) it3.next()).intValue();
            String strCodePointToString = codePointToString(iIntValue2);
            if (map.containsKey(Integer.valueOf(iIntValue2))) {
                linkedHashMap.put(Integer.valueOf(iIntValue2), strCodePointToString);
                linkedHashMap2.put(strCodePointToString, strCodePointToString);
            } else {
                Object next = it2.next();
                while (true) {
                    num = (Integer) next;
                    if (!linkedHashSet3.contains(num)) {
                        break;
                    }
                    next = it2.next();
                }
                String strCodePointToString2 = codePointToString(num.intValue());
                linkedHashMap.put(Integer.valueOf(iIntValue2), strCodePointToString2);
                linkedHashMap2.put(strCodePointToString2, strCodePointToString);
            }
        }
        return new AlphabetConverter(linkedHashMap, linkedHashMap2, 1);
    }

    public static AlphabetConverter createConverterFromChars(Character[] chArr, Character[] chArr2, Character[] chArr3) {
        return createConverter(convertCharsToIntegers(chArr), convertCharsToIntegers(chArr2), convertCharsToIntegers(chArr3));
    }

    public static AlphabetConverter createConverterFromMap(Map<Integer, String> map) {
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length = 1;
        for (Map.Entry entry : mapUnmodifiableMap.entrySet()) {
            linkedHashMap.put(entry.getValue(), codePointToString(((Integer) entry.getKey()).intValue()));
            if (((String) entry.getValue()).length() > length) {
                length = ((String) entry.getValue()).length();
            }
        }
        return new AlphabetConverter(mapUnmodifiableMap, linkedHashMap, length);
    }

    public String decode(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            int iCodePointAt = str.codePointAt(i);
            String strCodePointToString = codePointToString(iCodePointAt);
            if (strCodePointToString.equals(this.originalToEncoded.get(Integer.valueOf(iCodePointAt)))) {
                sb.append(strCodePointToString);
                i++;
            } else {
                if (this.encodedLetterLength + i > str.length()) {
                    throw new UnsupportedEncodingException(jo.n("Unexpected end of string while decoding ", str));
                }
                String strSubstring = str.substring(i, this.encodedLetterLength + i);
                String str2 = this.encodedToOriginal.get(strSubstring);
                if (str2 == null) {
                    throw new UnsupportedEncodingException("Unexpected string without decoding (" + strSubstring + ") in " + str);
                }
                sb.append(str2);
                i += this.encodedLetterLength;
            }
        }
        return sb.toString();
    }

    public String encode(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int iCharCount = 0;
        while (iCharCount < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount);
            String str2 = this.originalToEncoded.get(Integer.valueOf(iCodePointAt));
            if (str2 == null) {
                throw new UnsupportedEncodingException(jo.t(jo.z("Couldn't find encoding for '"), codePointToString(iCodePointAt), "' in ", str));
            }
            sb.append(str2);
            iCharCount += Character.charCount(iCodePointAt);
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AlphabetConverter)) {
            return false;
        }
        AlphabetConverter alphabetConverter = (AlphabetConverter) obj;
        return this.originalToEncoded.equals(alphabetConverter.originalToEncoded) && this.encodedToOriginal.equals(alphabetConverter.encodedToOriginal) && this.encodedLetterLength == alphabetConverter.encodedLetterLength;
    }

    public int getEncodedCharLength() {
        return this.encodedLetterLength;
    }

    public Map<Integer, String> getOriginalToEncoded() {
        return Collections.unmodifiableMap(this.originalToEncoded);
    }

    public int hashCode() {
        return Objects.hash(this.originalToEncoded, this.encodedToOriginal, Integer.valueOf(this.encodedLetterLength));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Integer, String> entry : this.originalToEncoded.entrySet()) {
            sb.append(codePointToString(entry.getKey().intValue()));
            sb.append(ARROW);
            sb.append(entry.getValue());
            sb.append(System.lineSeparator());
        }
        return sb.toString();
    }
}
