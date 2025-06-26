.class public final Lq58;
.super Lj58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Ljava/util/Locale;

.field public static final h:Lq58;

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lq58;->g:Ljava/util/Locale;

    .line 2
    new-instance v0, Lq58;

    invoke-direct {v0}, Lq58;-><init>()V

    sput-object v0, Lq58;->h:Lq58;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lq58;->i:Ljava/util/Map;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lq58;->j:Ljava/util/Map;

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lq58;->k:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "K"

    const-string v6, "M"

    const-string v7, "T"

    const-string v8, "S"

    const-string v9, "H"

    .line 6
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "en"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "K"

    const-string v8, "M"

    const-string v9, "T"

    const-string v10, "S"

    const-string v11, "H"

    .line 7
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "K"

    const-string v8, "M"

    const-string v9, "T"

    const-string v10, "S"

    const-string v11, "H"

    .line 8
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "\u6176"

    const-string v8, "\u660e"

    const-string v9, "\u5927"

    const-string v10, "\u662d"

    const-string v11, "\u5e73"

    .line 9
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "Keio"

    const-string v8, "Meiji"

    const-string v9, "Taisho"

    const-string v10, "Showa"

    const-string v11, "Heisei"

    .line 10
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "\u6176\u5fdc"

    const-string v8, "\u660e\u6cbb"

    const-string v9, "\u5927\u6b63"

    const-string v10, "\u662d\u548c"

    const-string v11, "\u5e73\u6210"

    .line 11
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj58;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lq58;->h:Lq58;

    return-object v0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "japanese"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "Japanese"

    return-object v0
.end method

.method public I(Lu68;)Lf58;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu68;",
            ")",
            "Lf58<",
            "Lr58;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lj58;->I(Lu68;)Lf58;

    move-result-object p1

    return-object p1
.end method

.method public L(Lo48;Lz48;)Lh58;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo48;",
            "Lz48;",
            ")",
            "Lh58<",
            "Lr58;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Li58;->X(Lj58;Lo48;Lz48;)Li58;

    move-result-object p1

    return-object p1
.end method

.method public M(Lq68;)Ld78;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x14

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    .line 2
    sget-object v0, Lq58;->g:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_1

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplementable field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_0
    invoke-static {}, Ls58;->N()[Ls58;

    move-result-object p1

    .line 6
    aget-object v0, p1, v3

    .line 7
    iget v0, v0, Ls58;->e:I

    int-to-long v0, v0

    .line 8
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    .line 9
    iget p1, p1, Ls58;->e:I

    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_1
    invoke-static {}, Ls58;->N()[Ls58;

    move-result-object p1

    .line 12
    sget-object v0, Lr58;->h:Lp48;

    .line 13
    iget v0, v0, Lp48;->e:I

    int-to-long v0, v0

    .line 14
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ls58;->K()Lp48;

    move-result-object p1

    .line 15
    iget p1, p1, Lp48;->e:I

    int-to-long v2, p1

    .line 16
    invoke-static {v0, v1, v2, v3}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    invoke-static {}, Ls58;->N()[Ls58;

    move-result-object p1

    .line 18
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ls58;->K()Lp48;

    move-result-object v0

    .line 19
    iget v0, v0, Lp48;->e:I

    .line 20
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    .line 21
    iget-object v1, v1, Ls58;->f:Lp48;

    .line 22
    iget v1, v1, Lp48;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    .line 23
    :goto_0
    array-length v2, p1

    if-ge v3, v2, :cond_0

    .line 24
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ls58;->K()Lp48;

    move-result-object v2

    .line 25
    iget v2, v2, Lp48;->e:I

    .line 26
    aget-object v4, p1, v3

    .line 27
    iget-object v4, v4, Ls58;->f:Lp48;

    .line 28
    iget v4, v4, Lp48;->e:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x6

    int-to-long v8, v1

    int-to-long v10, v0

    .line 30
    invoke-static/range {v4 .. v11}, Ld78;->f(JJJJ)Ld78;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x2

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v6, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v8, p1

    .line 33
    invoke-static/range {v2 .. v9}, Ld78;->f(JJJJ)Ld78;

    move-result-object p1

    return-object p1

    .line 34
    :cond_2
    invoke-static {}, Ls58;->N()[Ls58;

    move-result-object p1

    const/16 v0, 0x16e

    const/16 v1, 0x16e

    .line 35
    :goto_1
    array-length v2, p1

    if-ge v3, v2, :cond_4

    .line 36
    aget-object v2, p1, v3

    .line 37
    iget-object v2, v2, Ls58;->f:Lp48;

    .line 38
    invoke-virtual {v2}, Lp48;->a0()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x16e

    goto :goto_2

    :cond_3
    const/16 v2, 0x16d

    .line 39
    :goto_2
    aget-object v4, p1, v3

    .line 40
    iget-object v4, v4, Ls58;->f:Lp48;

    .line 41
    invoke-virtual {v4}, Lp48;->Y()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x1

    int-to-long v6, v1

    const-wide/16 v8, 0x16e

    .line 42
    invoke-static/range {v4 .. v9}, Ld78;->e(JJJ)Ld78;

    move-result-object p1

    return-object p1

    .line 43
    :cond_5
    :pswitch_3
    iget-object p1, p1, Lq68;->h:Ld78;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lu68;)Le58;
    .locals 1

    .line 1
    instance-of v0, p1, Lr58;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lr58;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lr58;

    invoke-static {p1}, Lp48;->V(Lu68;)Lp48;

    move-result-object p1

    invoke-direct {v0, p1}, Lr58;-><init>(Lp48;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public x(I)Lk58;
    .locals 0

    .line 1
    invoke-static {p1}, Ls58;->M(I)Ls58;

    move-result-object p1

    return-object p1
.end method
