package defpackage;

import android.util.SparseIntArray;
import androidx.media.AudioAttributesCompat;
import java.util.Arrays;

/* loaded from: classes.dex */
public class be implements zd {
    public int a = 0;
    public int b = 0;
    public int c = 0;
    public int d = -1;

    public boolean equals(Object obj) {
        if (!(obj instanceof be)) {
            return false;
        }
        be beVar = (be) obj;
        if (this.b != beVar.b) {
            return false;
        }
        int i = this.c;
        int i2 = beVar.c;
        int i3 = beVar.d;
        int i4 = 4;
        if (i3 == -1) {
            int i5 = beVar.a;
            SparseIntArray sparseIntArray = AudioAttributesCompat.b;
            if ((i2 & 1) != 1) {
                if ((i2 & 4) != 4) {
                    switch (i5) {
                        case 2:
                            i4 = 0;
                            break;
                        case 3:
                            i4 = 8;
                            break;
                        case 4:
                            break;
                        case 5:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                            i4 = 5;
                            break;
                        case 6:
                            i4 = 2;
                            break;
                        case 11:
                            i4 = 10;
                            break;
                        case 12:
                        default:
                            i4 = 3;
                            break;
                        case 13:
                            i4 = 1;
                            break;
                    }
                } else {
                    i4 = 6;
                }
            } else {
                i4 = 7;
            }
        } else {
            i4 = i3;
        }
        if (i4 == 6) {
            i2 |= 4;
        } else if (i4 == 7) {
            i2 |= 1;
        }
        return i == (i2 & 273) && this.a == beVar.a && this.d == i3;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.a), Integer.valueOf(this.d)});
    }

    public String toString() {
        String strG;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.d != -1) {
            sb.append(" stream=");
            sb.append(this.d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i = this.a;
        SparseIntArray sparseIntArray = AudioAttributesCompat.b;
        switch (i) {
            case 0:
                strG = "USAGE_UNKNOWN";
                break;
            case 1:
                strG = "USAGE_MEDIA";
                break;
            case 2:
                strG = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                strG = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                strG = "USAGE_ALARM";
                break;
            case 5:
                strG = "USAGE_NOTIFICATION";
                break;
            case 6:
                strG = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                strG = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                strG = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                strG = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                strG = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                strG = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                strG = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                strG = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                strG = "USAGE_GAME";
                break;
            case 15:
            default:
                strG = jo.g("unknown usage ", i);
                break;
            case 16:
                strG = "USAGE_ASSISTANT";
                break;
        }
        sb.append(strG);
        sb.append(" content=");
        sb.append(this.b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.c).toUpperCase());
        return sb.toString();
    }
}
