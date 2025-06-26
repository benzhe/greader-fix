.class public final Lop;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lop;->a:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lop;->b:Ljava/lang/String;

    return-void
.end method

.method public static a([CII)I
    .locals 3

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 1
    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p2, p1, 0x1

    .line 2
    aget-char p1, p0, p1

    const/16 v1, -0x30

    const v2, 0x5f5e100

    invoke-static {p1, v1, v2, v0}, Ljo;->b(IIII)I

    move-result v0

    move p1, p2

    :pswitch_1
    add-int/lit8 p2, p1, 0x1

    .line 3
    aget-char p1, p0, p1

    const/16 v1, -0x30

    const v2, 0x989680

    invoke-static {p1, v1, v2, v0}, Ljo;->b(IIII)I

    move-result v0

    move p1, p2

    :pswitch_2
    add-int/lit8 p2, p1, 0x1

    .line 4
    aget-char p1, p0, p1

    const/16 v1, -0x30

    const v2, 0xf4240

    invoke-static {p1, v1, v2, v0}, Ljo;->b(IIII)I

    move-result v0

    move p1, p2

    :pswitch_3
    add-int/lit8 p2, p1, 0x1

    .line 5
    aget-char p1, p0, p1

    const/16 v1, -0x30

    const v2, 0x186a0

    invoke-static {p1, v1, v2, v0}, Ljo;->b(IIII)I

    move-result v0

    move p1, p2

    :pswitch_4
    add-int/lit8 p2, p1, 0x1

    .line 6
    aget-char p1, p0, p1

    const/16 v1, -0x30

    const/16 v2, 0x2710

    invoke-static {p1, v1, v2, v0}, Ljo;->b(IIII)I

    move-result v0

    move p1, p2

    :pswitch_5
    add-int/lit8 p2, p1, 0x1

    .line 7
    aget-char p1, p0, p1

    const/16 v1, -0x30

    const/16 v2, 0x3e8

    invoke-static {p1, v1, v2, v0}, Ljo;->b(IIII)I

    move-result v0

    move p1, p2

    :pswitch_6
    add-int/lit8 p2, p1, 0x1

    .line 8
    aget-char p1, p0, p1

    const/16 v1, -0x30

    const/16 v2, 0x64

    invoke-static {p1, v1, v2, v0}, Ljo;->b(IIII)I

    move-result v0

    move p1, p2

    .line 9
    :pswitch_7
    aget-char p0, p0, p1

    const/16 p1, -0x30

    const/16 p2, 0xa

    invoke-static {p0, p1, p2, v0}, Ljo;->b(IIII)I

    move-result v0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b([CII)J
    .locals 5

    const/16 v0, 0x9

    sub-int/2addr p2, v0

    .line 1
    invoke-static {p0, p1, p2}, Lop;->a([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long v1, v1, v3

    add-int/2addr p1, p2

    .line 2
    invoke-static {p0, p1, v0}, Lop;->a([CII)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    return-wide v1
.end method
