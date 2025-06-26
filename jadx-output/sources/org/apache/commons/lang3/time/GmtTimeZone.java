package org.apache.commons.lang3.time;

import defpackage.jo;
import java.util.Date;
import java.util.TimeZone;
import org.apache.commons.text.lookup.AbstractStringLookup;

/* loaded from: classes2.dex */
public class GmtTimeZone extends TimeZone {
    private static final int HOURS_PER_DAY = 24;
    private static final int MILLISECONDS_PER_MINUTE = 60000;
    private static final int MINUTES_PER_HOUR = 60;
    public static final long serialVersionUID = 1;
    private final int offset;
    private final String zoneId;

    public GmtTimeZone(boolean z, int i, int i2) {
        if (i >= 24) {
            throw new IllegalArgumentException(i + " hours out of range");
        }
        if (i2 >= 60) {
            throw new IllegalArgumentException(i2 + " minutes out of range");
        }
        int i3 = ((i * 60) + i2) * MILLISECONDS_PER_MINUTE;
        this.offset = z ? -i3 : i3;
        StringBuilder sbW = jo.w(9, TimeZones.GMT_ID);
        sbW.append(z ? '-' : '+');
        StringBuilder sbTwoDigits = twoDigits(sbW, i);
        sbTwoDigits.append(AbstractStringLookup.SPLIT_CH);
        this.zoneId = twoDigits(sbTwoDigits, i2).toString();
    }

    private static StringBuilder twoDigits(StringBuilder sb, int i) {
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
        return sb;
    }

    public boolean equals(Object obj) {
        return (obj instanceof GmtTimeZone) && this.zoneId == ((GmtTimeZone) obj).zoneId;
    }

    @Override // java.util.TimeZone
    public String getID() {
        return this.zoneId;
    }

    @Override // java.util.TimeZone
    public int getOffset(int i, int i2, int i3, int i4, int i5, int i6) {
        return this.offset;
    }

    @Override // java.util.TimeZone
    public int getRawOffset() {
        return this.offset;
    }

    public int hashCode() {
        return this.offset;
    }

    @Override // java.util.TimeZone
    public boolean inDaylightTime(Date date) {
        return false;
    }

    @Override // java.util.TimeZone
    public void setRawOffset(int i) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("[GmtTimeZone id=\"");
        sbZ.append(this.zoneId);
        sbZ.append("\",offset=");
        sbZ.append(this.offset);
        sbZ.append(']');
        return sbZ.toString();
    }

    @Override // java.util.TimeZone
    public boolean useDaylightTime() {
        return false;
    }
}
