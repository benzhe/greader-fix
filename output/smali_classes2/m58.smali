.class public final Lm58;
.super Ld58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld58<",
        "Lm58;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final A:[Ljava/lang/Integer;

.field public static final B:[Ljava/lang/Integer;

.field public static final C:[Ljava/lang/Integer;

.field public static final D:[Ljava/lang/Integer;

.field public static final E:[Ljava/lang/Integer;

.field public static final F:[Ljava/lang/Integer;

.field public static final G:[Ljava/lang/Integer;

.field public static final H:[Ljava/lang/Integer;

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:[I

.field public static final p:[I

.field public static final q:[I

.field public static final r:[I

.field public static final s:[I

.field public static final t:C

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:[Ljava/lang/Long;


# instance fields
.field public final transient e:Ln58;

.field public final transient f:I

.field public final transient g:I

.field public final transient h:I

.field public final transient i:I

.field public final transient j:Lm48;

.field public final k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lm58;->l:[I

    new-array v2, v0, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lm58;->m:[I

    new-array v2, v0, [I

    .line 3
    fill-array-data v2, :array_2

    sput-object v2, Lm58;->n:[I

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lm58;->o:[I

    const/4 v0, 0x7

    new-array v2, v0, [I

    .line 5
    fill-array-data v2, :array_4

    sput-object v2, Lm58;->p:[I

    new-array v2, v0, [I

    .line 6
    fill-array-data v2, :array_5

    sput-object v2, Lm58;->q:[I

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_6

    sput-object v0, Lm58;->r:[I

    const/16 v0, 0x1e

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_7

    sput-object v0, Lm58;->s:[I

    .line 9
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lm58;->t:C

    .line 10
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v2, Lm58;->u:Ljava/lang/String;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "threeten"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "bp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "chrono"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm58;->v:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lm58;->w:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lm58;->x:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lm58;->y:Ljava/util/HashMap;

    .line 15
    array-length v0, v1

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lm58;->D:[Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    :goto_0
    sget-object v2, Lm58;->l:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 17
    sget-object v3, Lm58;->D:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lm58;->m:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lm58;->E:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 19
    :goto_1
    sget-object v2, Lm58;->m:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 20
    sget-object v3, Lm58;->E:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21
    :cond_1
    sget-object v1, Lm58;->n:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lm58;->F:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 22
    :goto_2
    sget-object v2, Lm58;->n:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 23
    sget-object v3, Lm58;->F:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_2
    sget-object v1, Lm58;->o:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lm58;->G:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 25
    :goto_3
    sget-object v2, Lm58;->o:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 26
    sget-object v3, Lm58;->G:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 27
    :cond_3
    sget-object v1, Lm58;->s:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lm58;->H:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 28
    :goto_4
    sget-object v2, Lm58;->s:[I

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 29
    sget-object v3, Lm58;->H:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, 0x14e

    new-array v1, v1, [Ljava/lang/Long;

    .line 30
    sput-object v1, Lm58;->z:[Ljava/lang/Long;

    const/4 v1, 0x0

    .line 31
    :goto_5
    sget-object v2, Lm58;->z:[Ljava/lang/Long;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    mul-int/lit16 v3, v1, 0x2987

    int-to-long v3, v3

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 33
    :cond_5
    sget-object v1, Lm58;->p:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lm58;->A:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 34
    :goto_6
    sget-object v2, Lm58;->p:[I

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 35
    sget-object v3, Lm58;->A:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 36
    :cond_6
    sget-object v1, Lm58;->q:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lm58;->B:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 37
    :goto_7
    sget-object v2, Lm58;->q:[I

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 38
    sget-object v3, Lm58;->B:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 39
    :cond_7
    sget-object v1, Lm58;->r:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lm58;->C:[Ljava/lang/Integer;

    .line 40
    :goto_8
    sget-object v1, Lm58;->r:[I

    array-length v2, v1

    if-ge v0, v2, :cond_8

    .line 41
    sget-object v2, Lm58;->C:[Ljava/lang/Integer;

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 42
    :cond_8
    :try_start_0
    invoke-static {}, Lm58;->k0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

    :array_2
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_3
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x270f
        0xb
        0x33
        0x5
        0x1d
        0x162
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x270f
        0xb
        0x34
        0x6
        0x1e
        0x163
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x162
        0x2c5
        0x427
        0x589
        0x6ec
        0x84e
        0x9b1
        0xb13
        0xc75
        0xdd8
        0xf3a
        0x109c
        0x11ff
        0x1361
        0x14c3
        0x1626
        0x1788
        0x18eb
        0x1a4d
        0x1baf
        0x1d12
        0x1e74
        0x1fd6
        0x2139
        0x229b
        0x23fe
        0x2560
        0x26c2
        0x2825
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ld58;-><init>()V

    const-wide/32 v0, -0x78274

    sub-long v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    .line 2
    sget-object v4, Lm58;->z:[Ljava/lang/Long;

    const/4 v5, 0x0

    .line 3
    :goto_0
    :try_start_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 4
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v0, v6

    if-gez v8, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    long-to-int v4, v0

    .line 5
    div-int/lit16 v4, v4, 0x2987
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    long-to-int v4, v0

    .line 6
    div-int/lit16 v4, v4, 0x2987

    :goto_1
    move v5, v4

    .line 7
    :goto_2
    :try_start_1
    sget-object v4, Lm58;->z:[Ljava/lang/Long;

    aget-object v4, v4, v5
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_2

    mul-int/lit16 v4, v5, 0x2987

    int-to-long v6, v4

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 9
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    long-to-int v4, v6

    int-to-long v6, v4

    .line 10
    invoke-static {v5, v6, v7}, Lm58;->e0(IJ)I

    move-result v6

    .line 11
    invoke-static {v5, v4, v6}, Lm58;->b0(III)I

    move-result v4

    mul-int/lit8 v5, v5, 0x1e

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 12
    invoke-static {v4, v5}, Lm58;->d0(II)I

    move-result v6

    .line 13
    invoke-static {v4, v6, v5}, Lm58;->a0(III)I

    move-result v7

    add-int/2addr v7, v3

    const/4 v8, 0x1

    goto :goto_5

    :cond_3
    long-to-int v4, v0

    .line 14
    div-int/lit16 v5, v4, 0x2987

    .line 15
    rem-int/lit16 v4, v4, 0x2987

    if-nez v4, :cond_4

    const/16 v4, -0x2987

    add-int/lit8 v5, v5, 0x1

    :cond_4
    int-to-long v6, v4

    .line 16
    invoke-static {v5, v6, v7}, Lm58;->e0(IJ)I

    move-result v6

    .line 17
    invoke-static {v5, v4, v6}, Lm58;->b0(III)I

    move-result v4

    mul-int/lit8 v5, v5, 0x1e

    sub-int/2addr v5, v6

    rsub-int/lit8 v5, v5, 0x1

    int-to-long v6, v5

    .line 18
    invoke-static {v6, v7}, Lm58;->f0(J)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit16 v4, v4, 0x163

    goto :goto_4

    :cond_5
    add-int/lit16 v4, v4, 0x162

    .line 19
    :goto_4
    invoke-static {v4, v5}, Lm58;->d0(II)I

    move-result v6

    .line 20
    invoke-static {v4, v6, v5}, Lm58;->a0(III)I

    move-result v7

    add-int/2addr v7, v3

    const/4 v8, 0x0

    :goto_5
    const-wide/16 v9, 0x5

    add-long/2addr v0, v9

    const-wide/16 v9, 0x7

    .line 21
    rem-long/2addr v0, v9

    long-to-int v1, v0

    if-gtz v1, :cond_6

    const/4 v0, 0x7

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    add-int/2addr v1, v0

    const/4 v0, 0x6

    new-array v9, v0, [I

    aput v8, v9, v2

    aput v5, v9, v3

    add-int/2addr v6, v3

    const/4 v5, 0x2

    aput v6, v9, v5

    const/4 v6, 0x3

    aput v7, v9, v6

    add-int/2addr v4, v3

    const/4 v7, 0x4

    aput v4, v9, v7

    const/4 v4, 0x5

    aput v1, v9, v4

    .line 22
    aget v1, v9, v3

    if-lt v1, v3, :cond_9

    const/16 v8, 0x270f

    if-gt v1, v8, :cond_9

    .line 23
    aget v1, v9, v5

    if-lt v1, v3, :cond_8

    const/16 v8, 0xc

    if-gt v1, v8, :cond_8

    .line 24
    aget v1, v9, v6

    invoke-static {v1}, Lm58;->X(I)V

    .line 25
    aget v1, v9, v7

    if-lt v1, v3, :cond_7

    .line 26
    sget-object v8, Lm58;->C:[Ljava/lang/Integer;

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_7

    .line 27
    aget v0, v9, v2

    invoke-static {v0}, Ln58;->K(I)Ln58;

    move-result-object v0

    iput-object v0, p0, Lm58;->e:Ln58;

    .line 28
    aget v0, v9, v3

    iput v0, p0, Lm58;->f:I

    .line 29
    aget v1, v9, v5

    iput v1, p0, Lm58;->g:I

    .line 30
    aget v1, v9, v6

    iput v1, p0, Lm58;->h:I

    .line 31
    aget v1, v9, v7

    iput v1, p0, Lm58;->i:I

    .line 32
    aget v1, v9, v4

    invoke-static {v1}, Lm48;->L(I)Lm48;

    move-result-object v1

    iput-object v1, p0, Lm58;->j:Lm48;

    .line 33
    iput-wide p1, p0, Lm58;->k:J

    int-to-long p1, v0

    .line 34
    invoke-static {p1, p2}, Lm58;->f0(J)Z

    return-void

    .line 35
    :cond_7
    new-instance p1, Ll48;

    const-string p2, "Invalid day of year of Hijrah date"

    invoke-direct {p1, p2}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_8
    new-instance p1, Ll48;

    const-string p2, "Invalid month of Hijrah date"

    invoke-direct {p1, p2}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_9
    new-instance p1, Ll48;

    const-string p2, "Invalid year of Hijrah Era"

    invoke-direct {p1, p2}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static X(I)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    .line 1
    sget-object v1, Lm58;->C:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ll48;

    const-string v2, "Invalid day of month of Hijrah date, day "

    const-string v3, " greater than "

    invoke-static {v2, p0, v3}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3
    sget-object v2, Lm58;->C:[Ljava/lang/Integer;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or less than 1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static Y(I)[Ljava/lang/Integer;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lm58;->y:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lm58;->H:[Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public static Z(I)[Ljava/lang/Integer;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lm58;->w:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    int-to-long v0, p0

    .line 2
    invoke-static {v0, v1}, Lm58;->f0(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lm58;->E:[Ljava/lang/Integer;

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lm58;->D:[Ljava/lang/Integer;

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static a0(III)I
    .locals 3

    .line 1
    invoke-static {p2}, Lm58;->Z(I)[Ljava/lang/Integer;

    move-result-object v0

    if-ltz p0, :cond_1

    if-lez p1, :cond_0

    .line 2
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    :cond_0
    return p0

    :cond_1
    int-to-long v1, p2

    .line 3
    invoke-static {v1, v2}, Lm58;->f0(J)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit16 p0, p0, 0x163

    goto :goto_1

    :cond_2
    add-int/lit16 p0, p0, 0x162

    :goto_1
    if-lez p1, :cond_3

    .line 4
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public static b0(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lm58;->Y(I)[Ljava/lang/Integer;

    move-result-object p0

    if-lez p1, :cond_0

    .line 2
    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 3
    :cond_0
    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static c0(III)J
    .locals 4

    add-int/lit8 v0, p0, -0x1

    .line 1
    div-int/lit8 v1, v0, 0x1e

    .line 2
    rem-int/lit8 v0, v0, 0x1e

    .line 3
    invoke-static {v1}, Lm58;->Y(I)[Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget-object v2, v2, v3

    .line 4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v0, :cond_0

    neg-int v2, v2

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Lm58;->z:[Ljava/lang/Long;

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    mul-int/lit16 v1, v1, 0x2987

    int-to-long v0, v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, -0x78274

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-int/lit8 p1, p1, -0x1

    .line 8
    invoke-static {p0}, Lm58;->Z(I)[Ljava/lang/Integer;

    move-result-object p0

    .line 9
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    int-to-long p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static d0(II)I
    .locals 5

    .line 1
    invoke-static {p1}, Lm58;->Z(I)[Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ltz p0, :cond_2

    .line 2
    :goto_0
    array-length p1, v0

    if-ge v2, p1, :cond_1

    .line 3
    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_0

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    int-to-long v3, p1

    .line 4
    invoke-static {v3, v4}, Lm58;->f0(J)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit16 p0, p0, 0x163

    goto :goto_1

    :cond_3
    add-int/lit16 p0, p0, 0x162

    .line 5
    :goto_1
    array-length p1, v0

    if-ge v2, p1, :cond_5

    .line 6
    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_4

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public static e0(IJ)I
    .locals 5

    .line 1
    invoke-static {p0}, Lm58;->Y(I)[Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x1d

    if-lez v3, :cond_3

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    neg-long p1, p1

    .line 4
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 5
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-gtz v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public static f0(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    neg-long p0, p0

    :goto_0
    const-wide/16 v0, 0xb

    mul-long p0, p0, v0

    const-wide/16 v2, 0xe

    add-long/2addr p0, v2

    const-wide/16 v2, 0x1e

    .line 1
    rem-long/2addr p0, v2

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static g0(III)Lm58;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 1
    sget-object v0, Ln58;->f:Ln58;

    invoke-static {v0, p0, p1, p2}, Lm58;->h0(Ln58;III)Lm58;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Ln58;->e:Ln58;

    sub-int/2addr v0, p0

    invoke-static {v1, v0, p1, p2}, Lm58;->h0(Ln58;III)Lm58;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h0(Ln58;III)Lm58;
    .locals 2

    const-string v0, "era"

    .line 1
    invoke-static {p0, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v1, 0x270f

    if-gt p1, v1, :cond_2

    if-lt p2, v0, :cond_1

    const/16 v0, 0xc

    if-gt p2, v0, :cond_1

    .line 2
    invoke-static {p3}, Lm58;->X(I)V

    .line 3
    sget-object v0, Ln58;->f:Ln58;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0x1

    .line 4
    :goto_0
    invoke-static {p1, p2, p3}, Lm58;->c0(III)J

    move-result-wide p0

    .line 5
    new-instance p2, Lm58;

    invoke-direct {p2, p0, p1}, Lm58;-><init>(J)V

    return-object p2

    .line 6
    :cond_1
    new-instance p0, Ll48;

    const-string p1, "Invalid month of Hijrah date"

    invoke-direct {p0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ll48;

    const-string p1, "Invalid year of Hijrah Era"

    invoke-direct {p0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i0(Ljava/lang/String;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    move-object v3, p0

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const-string v4, "."

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2e

    add-int/lit8 v6, v3, 0x1

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 6
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 7
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v7, 0x2d

    .line 8
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v5, :cond_2d

    const/4 v8, 0x0

    .line 9
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    .line 10
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 11
    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v7, v5, :cond_2c

    .line 13
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    .line 14
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 15
    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 16
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 17
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v3, v5, :cond_2b

    .line 18
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    .line 20
    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 21
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 22
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    if-eq v9, v5, :cond_2a

    if-eq v7, v5, :cond_2a

    if-eq v3, v5, :cond_2a

    if-eq v2, v5, :cond_2a

    const/4 v4, 0x1

    if-lt v9, v4, :cond_29

    if-lt v3, v4, :cond_28

    if-ltz v7, :cond_27

    const/16 v5, 0xb

    if-gt v7, v5, :cond_27

    if-ltz v2, :cond_26

    if-gt v2, v5, :cond_26

    const/16 v5, 0x270f

    if-gt v3, v5, :cond_25

    if-lt v3, v9, :cond_24

    if-ne v3, v9, :cond_1

    if-lt v2, v7, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startYear == endYear && endMonth < startMonth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    int-to-long v10, v9

    .line 24
    invoke-static {v10, v11}, Lm58;->f0(J)Z

    move-result v5

    .line 25
    sget-object v8, Lm58;->w:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    if-nez v8, :cond_3

    if-eqz v5, :cond_2

    .line 26
    sget-object v8, Lm58;->m:[I

    array-length v8, v8

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    .line 27
    :goto_2
    sget-object v11, Lm58;->m:[I

    array-length v12, v11

    if-ge v10, v12, :cond_3

    .line 28
    aget v11, v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 29
    :cond_2
    sget-object v8, Lm58;->l:[I

    array-length v8, v8

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    .line 30
    :goto_3
    sget-object v11, Lm58;->l:[I

    array-length v12, v11

    if-ge v10, v12, :cond_3

    .line 31
    aget v11, v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 32
    :cond_3
    array-length v10, v8

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    :goto_4
    const/16 v12, 0xc

    if-ge v11, v12, :cond_5

    if-le v11, v7, :cond_4

    .line 33
    aget-object v12, v8, v11

    .line 34
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v12, v6

    .line 35
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    goto :goto_5

    .line 36
    :cond_4
    aget-object v12, v8, v11

    .line 37
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 38
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 39
    :cond_5
    sget-object v8, Lm58;->w:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v8, Lm58;->x:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    if-nez v8, :cond_7

    if-eqz v5, :cond_6

    .line 41
    sget-object v5, Lm58;->o:[I

    array-length v5, v5

    new-array v8, v5, [Ljava/lang/Integer;

    const/4 v5, 0x0

    .line 42
    :goto_6
    sget-object v10, Lm58;->o:[I

    array-length v11, v10

    if-ge v5, v11, :cond_7

    .line 43
    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 44
    :cond_6
    sget-object v5, Lm58;->n:[I

    array-length v5, v5

    new-array v8, v5, [Ljava/lang/Integer;

    const/4 v5, 0x0

    .line 45
    :goto_7
    sget-object v10, Lm58;->n:[I

    array-length v11, v10

    if-ge v5, v11, :cond_7

    .line 46
    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 47
    :cond_7
    array-length v5, v8

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v12, :cond_9

    if-ne v10, v7, :cond_8

    .line 48
    aget-object v11, v8, v10

    .line 49
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v11, v6

    .line 50
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    goto :goto_9

    .line 51
    :cond_8
    aget-object v11, v8, v10

    .line 52
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 53
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 54
    :cond_9
    sget-object v8, Lm58;->x:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v9, v3, :cond_13

    add-int/lit8 v5, v9, -0x1

    .line 55
    div-int/lit8 v8, v5, 0x1e

    .line 56
    rem-int/lit8 v5, v5, 0x1e

    .line 57
    sget-object v10, Lm58;->y:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Integer;

    if-nez v10, :cond_b

    .line 58
    sget-object v10, Lm58;->s:[I

    array-length v10, v10

    new-array v11, v10, [Ljava/lang/Integer;

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v10, :cond_a

    .line 59
    sget-object v14, Lm58;->s:[I

    aget v14, v14, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_a
    move-object v10, v11

    :cond_b
    add-int/2addr v5, v4

    .line 60
    :goto_b
    sget-object v4, Lm58;->s:[I

    array-length v4, v4

    if-ge v5, v4, :cond_c

    .line 61
    aget-object v4, v10, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 62
    :cond_c
    sget-object v4, Lm58;->y:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, -0x1

    .line 63
    div-int/lit8 v5, v4, 0x1e

    if-eq v8, v5, :cond_f

    add-int/lit8 v8, v8, 0x1

    .line 64
    :goto_c
    sget-object v10, Lm58;->z:[Ljava/lang/Long;

    array-length v11, v10

    if-ge v8, v11, :cond_d

    .line 65
    aget-object v11, v10, v8

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v11, v1

    int-to-long v0, v6

    sub-long/2addr v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p1

    move-object v1, v11

    goto :goto_c

    :cond_d
    move-object v11, v1

    add-int/lit8 v0, v5, 0x1

    .line 66
    :goto_d
    sget-object v1, Lm58;->z:[Ljava/lang/Long;

    array-length v8, v1

    if-ge v0, v8, :cond_e

    .line 67
    aget-object v8, v1, v0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object p0, v11

    int-to-long v10, v6

    add-long/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v0

    add-int/lit8 v0, v0, 0x1

    move-object v11, p0

    goto :goto_d

    :cond_e
    move-object p0, v11

    goto :goto_e

    :cond_f
    move-object p0, v1

    .line 68
    :goto_e
    rem-int/lit8 v4, v4, 0x1e

    .line 69
    sget-object v0, Lm58;->y:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-nez v0, :cond_11

    .line 70
    sget-object v0, Lm58;->s:[I

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v0, :cond_10

    .line 71
    sget-object v10, Lm58;->s:[I

    aget v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_10
    move-object v0, v1

    :cond_11
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 72
    sget-object v1, Lm58;->s:[I

    array-length v1, v1

    if-ge v4, v1, :cond_12

    .line 73
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_10

    .line 74
    :cond_12
    sget-object v1, Lm58;->y:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_13
    move-object p0, v1

    :goto_11
    int-to-long v0, v3

    .line 75
    invoke-static {v0, v1}, Lm58;->f0(J)Z

    move-result v0

    .line 76
    sget-object v1, Lm58;->w:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    if-nez v1, :cond_15

    if-eqz v0, :cond_14

    .line 77
    sget-object v1, Lm58;->m:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 78
    :goto_12
    sget-object v5, Lm58;->m:[I

    array-length v8, v5

    if-ge v4, v8, :cond_15

    .line 79
    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 80
    :cond_14
    sget-object v1, Lm58;->l:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 81
    :goto_13
    sget-object v5, Lm58;->l:[I

    array-length v8, v5

    if-ge v4, v8, :cond_15

    .line 82
    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 83
    :cond_15
    array-length v4, v1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v12, :cond_17

    if-le v5, v2, :cond_16

    .line 84
    aget-object v8, v1, v5

    .line 85
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v6

    .line 86
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    goto :goto_15

    .line 87
    :cond_16
    aget-object v8, v1, v5

    .line 88
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 89
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 90
    :cond_17
    sget-object v1, Lm58;->w:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lm58;->x:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    if-nez v1, :cond_19

    if-eqz v0, :cond_18

    .line 92
    sget-object v0, Lm58;->o:[I

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 93
    :goto_16
    sget-object v4, Lm58;->o:[I

    array-length v5, v4

    if-ge v0, v5, :cond_19

    .line 94
    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 95
    :cond_18
    sget-object v0, Lm58;->n:[I

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 96
    :goto_17
    sget-object v4, Lm58;->n:[I

    array-length v5, v4

    if-ge v0, v5, :cond_19

    .line 97
    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 98
    :cond_19
    array-length v0, v1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v12, :cond_1b

    if-ne v4, v2, :cond_1a

    .line 99
    aget-object v5, v1, v4

    .line 100
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    goto :goto_19

    .line 102
    :cond_1a
    aget-object v5, v1, v4

    .line 103
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 105
    :cond_1b
    sget-object v1, Lm58;->x:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 108
    sget-object v4, Lm58;->w:Ljava/util/HashMap;

    .line 109
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 111
    aget-object v4, v0, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 112
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xb

    .line 113
    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v0, v0, v6

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    .line 115
    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v1, v6

    .line 116
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    .line 117
    sget-object v3, Lm58;->C:[Ljava/lang/Integer;

    const/4 v5, 0x5

    aget-object v6, v3, v5

    .line 118
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 119
    sget-object v7, Lm58;->B:[Ljava/lang/Integer;

    aget-object v8, v7, v5

    .line 120
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v6, v4, :cond_1c

    move v6, v4

    :cond_1c
    if-ge v6, v2, :cond_1d

    move v6, v2

    .line 121
    :cond_1d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    if-le v8, v4, :cond_1e

    goto :goto_1a

    :cond_1e
    move v4, v8

    :goto_1a
    if-le v4, v2, :cond_1f

    goto :goto_1b

    :cond_1f
    move v2, v4

    .line 122
    :goto_1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v5

    const/4 v2, 0x6

    .line 123
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 124
    aget-object v5, v7, v2

    .line 125
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v0, :cond_20

    move v4, v0

    :cond_20
    if-ge v4, v1, :cond_21

    move v4, v1

    .line 126
    :cond_21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    if-le v5, v0, :cond_22

    goto :goto_1c

    :cond_22
    move v0, v5

    :goto_1c
    if-le v0, v1, :cond_23

    goto :goto_1d

    :cond_23
    move v1, v0

    .line 127
    :goto_1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    move-object v1, p0

    move/from16 v0, p1

    goto/16 :goto_0

    .line 128
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startYear > endYear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endYear > 9999"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endMonth < 0 || endMonth > 11"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startMonth < 0 || startMonth > 11"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endYear < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startYear < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2a
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Unknown error at line "

    move/from16 v2, p1

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_0
    move v2, v0

    .line 135
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "End month is not properly set at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_1
    move v2, v0

    .line 136
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "End year is not properly set at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2b
    move v2, v0

    .line 137
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "End year/month has incorrect format at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_2
    move v2, v0

    .line 138
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Start month is not properly set at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_3
    move v2, v0

    .line 139
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Start year is not properly set at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2c
    move v2, v0

    .line 140
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Start year/month has incorrect format at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2d
    move v2, v0

    .line 141
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Start and end year/month has incorrect format at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_4
    move v2, v0

    .line 142
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Offset is not properly set at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2e
    move v2, v0

    .line 143
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Offset has incorrect format at line "

    invoke-static {v1, v2, v4}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2f
    return-void
.end method

.method public static k0()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "org.threeten.bp.i18n.HijrahDate.deviationConfigFile"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "hijrah_deviation.cfg"

    :cond_0
    const-string v1, "org.threeten.bp.i18n.HijrahDate.deviationConfigDir"

    .line 2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "file.separator"

    if-nez v3, :cond_1

    .line 4
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    :cond_1
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v4, Lm58;->t:C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 10
    throw v0

    :cond_3
    const-string v1, "java.class.path"

    .line 11
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v4, Lm58;->u:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 18
    new-instance v4, Ljava/io/File;

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Lm58;->t:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v7, Lm58;->v:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 20
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception v0

    .line 21
    throw v0

    .line 22
    :cond_5
    :try_start_2
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lm58;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v5, Lm58;->t:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-nez v6, :cond_8

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_6

    .line 25
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    if-ne v5, v6, :cond_7

    .line 26
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 27
    :cond_7
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    :cond_8
    if-eqz v6, :cond_4

    .line 28
    :try_start_3
    invoke-virtual {v1, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 29
    throw v0

    :cond_9
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_c

    .line 30
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    .line 31
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v2, v0}, Lm58;->i0(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 34
    :cond_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 35
    :cond_b
    throw v0

    :cond_c
    :goto_5
    return-void
.end method

.method public static l0(III)Lm58;
    .locals 2

    add-int/lit8 v0, p1, -0x1

    .line 1
    invoke-static {p0}, Lm58;->Z(I)[Ljava/lang/Integer;

    move-result-object v1

    .line 2
    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lm58;->g0(III)Lm58;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lm58;

    iget-wide v1, p0, Lm58;->k:J

    invoke-direct {v0, v1, v2}, Lm58;-><init>(J)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw58;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lw58;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public C(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    check-cast p1, Lm58;

    return-object p1
.end method

.method public D(Ly68;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lm58;->e:Ln58;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 6
    :pswitch_2
    iget p1, p0, Lm58;->f:I

    goto :goto_1

    .line 7
    :pswitch_3
    iget p1, p0, Lm58;->f:I

    goto :goto_1

    .line 8
    :pswitch_4
    iget p1, p0, Lm58;->g:I

    goto :goto_1

    .line 9
    :pswitch_5
    iget p1, p0, Lm58;->i:I

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 10
    :pswitch_6
    iget p1, p0, Lm58;->h:I

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 11
    :pswitch_7
    invoke-virtual {p0}, Lm58;->Q()J

    move-result-wide v0

    return-wide v0

    .line 12
    :pswitch_8
    iget p1, p0, Lm58;->i:I

    goto :goto_1

    .line 13
    :pswitch_9
    iget p1, p0, Lm58;->h:I

    goto :goto_1

    .line 14
    :pswitch_a
    iget p1, p0, Lm58;->i:I

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 15
    :pswitch_b
    iget p1, p0, Lm58;->h:I

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x7

    :goto_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 16
    :pswitch_c
    iget-object p1, p0, Lm58;->j:Lm48;

    invoke-virtual {p1}, Lm48;->K()I

    move-result p1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    .line 17
    :cond_0
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lm58;

    return-object p1
.end method

.method public final K(Lr48;)Lf58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr48;",
            ")",
            "Lf58<",
            "Lm58;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg58;

    invoke-direct {v0, p0, p1}, Lg58;-><init>(Le58;Lr48;)V

    return-object v0
.end method

.method public M()Lj58;
    .locals 1

    .line 1
    sget-object v0, Ll58;->g:Ll58;

    return-object v0
.end method

.method public N()Lk58;
    .locals 1

    .line 1
    iget-object v0, p0, Lm58;->e:Ln58;

    return-object v0
.end method

.method public O(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    check-cast p1, Lm58;

    return-object p1
.end method

.method public P(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lm58;

    return-object p1
.end method

.method public Q()J
    .locals 3

    .line 1
    iget v0, p0, Lm58;->f:I

    iget v1, p0, Lm58;->g:I

    iget v2, p0, Lm58;->h:I

    invoke-static {v0, v1, v2}, Lm58;->c0(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public R(Lv68;)Le58;
    .locals 1

    .line 1
    sget-object v0, Ll58;->g:Ll58;

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    .line 4
    check-cast p1, Lm58;

    return-object p1
.end method

.method public bridge synthetic S(Ly68;J)Le58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lm58;->m0(Ly68;J)Lm58;

    move-result-object p1

    return-object p1
.end method

.method public T(JLb78;)Ld58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lm58;

    return-object p1
.end method

.method public U(J)Ld58;
    .locals 3

    .line 1
    new-instance v0, Lm58;

    iget-wide v1, p0, Lm58;->k:J

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lm58;-><init>(J)V

    return-object v0
.end method

.method public V(J)Ld58;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    move-object p1, p0

    goto :goto_2

    .line 1
    :cond_0
    iget v0, p0, Lm58;->g:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    .line 2
    div-int/lit8 p1, v0, 0xc

    .line 3
    rem-int/lit8 v0, v0, 0xc

    :goto_0
    if-gez v0, :cond_3

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 p2, p1, -0x1

    xor-int v2, p1, p2

    if-gez v2, :cond_2

    xor-int/lit8 v2, p1, 0x1

    if-ltz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/ArithmeticException;

    const-string v0, "Subtraction overflows an int: "

    const-string v2, " - "

    invoke-static {v0, p1, v2, v1}, Ljo;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    move p1, p2

    goto :goto_0

    .line 5
    :cond_3
    iget p2, p0, Lm58;->f:I

    invoke-static {p2, p1}, Lkt7;->p(II)I

    move-result p1

    .line 6
    iget-object p2, p0, Lm58;->e:Ln58;

    add-int/2addr v0, v1

    iget v1, p0, Lm58;->h:I

    invoke-static {p2, p1, v0, v1}, Lm58;->h0(Ln58;III)Lm58;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public W(J)Ld58;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Lm58;->f:I

    long-to-int p2, p1

    invoke-static {v0, p2}, Lkt7;->p(II)I

    move-result p1

    .line 2
    iget-object p2, p0, Lm58;->e:Ln58;

    iget v0, p0, Lm58;->g:I

    iget v1, p0, Lm58;->h:I

    invoke-static {p2, p1, v0, v1}, Lm58;->h0(Ln58;III)Lm58;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lm58;->m0(Ly68;J)Lm58;

    move-result-object p1

    return-object p1
.end method

.method public j0(J)Lm58;
    .locals 3

    .line 1
    new-instance v0, Lm58;

    iget-wide v1, p0, Lm58;->k:J

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lm58;-><init>(J)V

    return-object v0
.end method

.method public m0(Ly68;J)Lm58;
    .locals 5

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    .line 3
    iget-object v1, v0, Lq68;->h:Ld78;

    .line 4
    invoke-virtual {v1, p2, p3, v0}, Ld78;->b(JLy68;)J

    long-to-int v1, p2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v2, 0x7

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    new-instance p2, Lc78;

    const-string p3, "Unsupported field: "

    invoke-static {p3, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :pswitch_1
    iget p1, p0, Lm58;->f:I

    sub-int/2addr v4, p1

    iget p1, p0, Lm58;->g:I

    iget p2, p0, Lm58;->h:I

    invoke-static {v4, p1, p2}, Lm58;->l0(III)Lm58;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_2
    iget p1, p0, Lm58;->g:I

    iget p2, p0, Lm58;->h:I

    invoke-static {v1, p1, p2}, Lm58;->l0(III)Lm58;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_3
    iget p1, p0, Lm58;->f:I

    if-lt p1, v4, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v1, 0x1

    :goto_0
    iget p1, p0, Lm58;->g:I

    iget p2, p0, Lm58;->h:I

    invoke-static {v1, p1, p2}, Lm58;->l0(III)Lm58;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_4
    iget p1, p0, Lm58;->f:I

    iget p2, p0, Lm58;->h:I

    invoke-static {p1, v1, p2}, Lm58;->l0(III)Lm58;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    sget-object p1, Lq68;->E:Lq68;

    invoke-virtual {p0, p1}, Lm58;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    mul-long p2, p2, v2

    invoke-virtual {p0, p2, p3}, Lm58;->j0(J)Lm58;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_6
    sget-object p1, Lq68;->D:Lq68;

    invoke-virtual {p0, p1}, Lm58;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    mul-long p2, p2, v2

    invoke-virtual {p0, p2, p3}, Lm58;->j0(J)Lm58;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_7
    new-instance p1, Lm58;

    int-to-long p2, v1

    invoke-direct {p1, p2, p3}, Lm58;-><init>(J)V

    return-object p1

    .line 14
    :pswitch_8
    iget p1, p0, Lm58;->f:I

    sub-int/2addr v1, v4

    div-int/lit8 p2, v1, 0x1e

    add-int/2addr p2, v4

    rem-int/lit8 v1, v1, 0x1e

    add-int/2addr v1, v4

    invoke-static {p1, p2, v1}, Lm58;->l0(III)Lm58;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_9
    iget p1, p0, Lm58;->f:I

    iget p2, p0, Lm58;->g:I

    invoke-static {p1, p2, v1}, Lm58;->l0(III)Lm58;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_a
    sget-object p1, Lq68;->z:Lq68;

    invoke-virtual {p0, p1}, Lm58;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lm58;->j0(J)Lm58;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_b
    sget-object p1, Lq68;->y:Lq68;

    invoke-virtual {p0, p1}, Lm58;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lm58;->j0(J)Lm58;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_c
    iget-object p1, p0, Lm58;->j:Lm48;

    invoke-virtual {p1}, Lm48;->K()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lm58;->j0(J)Lm58;

    move-result-object p1

    return-object p1

    .line 19
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lm58;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public t(Ly68;)Ld78;
    .locals 7

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0, p1}, Le58;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    check-cast p1, Lq68;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    .line 5
    sget-object v0, Ll58;->g:Ll58;

    .line 6
    iget-object p1, p1, Lq68;->h:Ld78;

    return-object p1

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 7
    invoke-static {v3, v4, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x5

    .line 8
    invoke-static {v3, v4, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget p1, p0, Lm58;->f:I

    add-int/lit8 v0, p1, -0x1

    .line 10
    div-int/lit8 v1, v0, 0x1e

    .line 11
    :try_start_0
    sget-object v5, Lm58;->y:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v2, :cond_4

    .line 12
    rem-int/lit8 v0, v0, 0x1e

    const/16 p1, 0x1d

    if-ne v0, p1, :cond_3

    .line 13
    sget-object p1, Lm58;->z:[Ljava/lang/Long;

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    aget-object p1, p1, v1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    sub-int/2addr v5, p1

    aget-object p1, v2, v0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v5, p1

    goto :goto_1

    :cond_3
    add-int/lit8 p1, v0, 0x1

    .line 16
    aget-object p1, v2, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, v2, v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v5, p1, v0

    goto :goto_1

    :cond_4
    int-to-long v0, p1

    .line 18
    invoke-static {v0, v1}, Lm58;->f0(J)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 v5, 0x163

    goto :goto_1

    :cond_5
    const/16 v5, 0x162

    :goto_1
    int-to-long v0, v5

    .line 19
    invoke-static {v3, v4, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 20
    :cond_6
    iget p1, p0, Lm58;->g:I

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lm58;->f:I

    .line 21
    :try_start_1
    sget-object v1, Lm58;->x:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    goto :goto_2

    :catch_1
    nop

    :goto_2
    if-nez v2, :cond_8

    int-to-long v0, v0

    .line 22
    invoke-static {v0, v1}, Lm58;->f0(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    sget-object v2, Lm58;->G:[Ljava/lang/Integer;

    goto :goto_3

    .line 24
    :cond_7
    sget-object v2, Lm58;->F:[Ljava/lang/Integer;

    .line 25
    :cond_8
    :goto_3
    aget-object p1, v2, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    .line 26
    invoke-static {v3, v4, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 27
    :cond_9
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_a
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public x(Lv68;)Lt68;
    .locals 1

    .line 1
    sget-object v0, Ll58;->g:Ll58;

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    .line 4
    check-cast p1, Lm58;

    return-object p1
.end method
