.class public Lvx5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Comparator;

.field public static final b:Lw35;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw35<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2
    new-instance v0, Lvx5$a;

    invoke-direct {v0}, Lvx5$a;-><init>()V

    sput-object v0, Lvx5;->a:Ljava/util/Comparator;

    .line 3
    sget-object v0, Lux5;->a:Lux5;

    sput-object v0, Lvx5;->b:Lw35;

    return-void
.end method

.method public static a(Lqi6;Lqi6;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lqi6;->size()I

    move-result v0

    invoke-virtual {p1}, Lqi6;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lqi6;->h(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 3
    invoke-virtual {p1, v1}, Lqi6;->h(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-ge v2, v3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lqi6;->size()I

    move-result p0

    invoke-virtual {p1}, Lqi6;->size()I

    move-result p1

    invoke-static {p0, p1}, Lvx5;->b(II)I

    move-result p0

    return p0
.end method

.method public static b(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(DJ)I
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, p0, v3

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, p0, v3

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    double-to-long v3, p0

    cmp-long v0, v3, p2

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    long-to-double p2, p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lc50;->V(DD)I

    move-result v1

    :goto_1
    return v1
.end method

.method public static d(Lx47;)Lzo5;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ly47;

    invoke-direct {v0, p0}, Ly47;-><init>(Lx47;)V

    .line 3
    new-instance v1, Lzo5;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object p0, p0, Lx47;->a:Lx47$b;

    .line 6
    iget p0, p0, Lx47$b;->e:I

    .line 7
    sget-object v3, Lzo5$a;->w:Landroid/util/SparseArray;

    sget-object v4, Lzo5$a;->h:Lzo5$a;

    invoke-virtual {v3, p0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzo5$a;

    .line 8
    invoke-direct {v1, v2, p0, v0}, Lzo5;-><init>(Ljava/lang/String;Lzo5$a;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static e(Lqi6;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lqi6;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lqi6;->h(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 5
    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
