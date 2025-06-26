.class public Lsl5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lpl5;

.field public static final b:Lpl5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-static {v0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v0

    sput-object v0, Lsl5;->a:Lpl5;

    const-string v0, "Unity"

    .line 2
    invoke-static {v0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v0

    sput-object v0, Lsl5;->b:Lpl5;

    return-void
.end method

.method public static a(Lpl5;Lpl5;)I
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lrl5;->g(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v3, 0x2

    .line 2
    invoke-static {v3, v1, v2}, Lrl5;->g(IJ)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x3

    .line 3
    invoke-static {v0, p0}, Lrl5;->b(ILpl5;)I

    move-result p0

    add-int/2addr p0, v1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 4
    invoke-static {v0, p1}, Lrl5;->b(ILpl5;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lrl5;->b(ILpl5;)I

    move-result p0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    invoke-static {p1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lrl5;->b(ILpl5;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c(Len5;II)I
    .locals 9

    .line 1
    iget-object v0, p0, Len5;->b:Ljava/lang/String;

    invoke-static {v0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lrl5;->b(ILpl5;)I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    .line 2
    iget-object v3, p0, Len5;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    .line 3
    invoke-static {v3}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v3

    invoke-static {v4, v3}, Lrl5;->b(ILpl5;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4
    :cond_0
    iget-object v3, p0, Len5;->c:[Ljava/lang/StackTraceElement;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 5
    invoke-static {v6, v1}, Lsl5;->h(Ljava/lang/StackTraceElement;Z)I

    move-result v6

    const/4 v7, 0x4

    .line 6
    invoke-static {v7}, Lrl5;->e(I)I

    move-result v7

    .line 7
    invoke-static {v6}, Lrl5;->d(I)I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v6

    add-int/2addr v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Len5;->d:Len5;

    if-eqz p0, :cond_4

    if-ge p1, p2, :cond_2

    add-int/2addr p1, v1

    .line 9
    invoke-static {p0, p1, p2}, Lsl5;->c(Len5;II)I

    move-result p0

    const/4 p1, 0x6

    .line 10
    invoke-static {p1}, Lrl5;->e(I)I

    move-result p1

    .line 11
    invoke-static {p0}, Lrl5;->d(I)I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p2, p0

    add-int/2addr v0, p2

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 12
    iget-object p0, p0, Len5;->d:Len5;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x7

    .line 13
    invoke-static {p0, v2}, Lrl5;->f(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    :goto_2
    return v0
.end method

.method public static d()I
    .locals 4

    .line 1
    sget-object v0, Lsl5;->a:Lpl5;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lrl5;->b(ILpl5;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x2

    .line 2
    invoke-static {v2, v0}, Lrl5;->b(ILpl5;)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lrl5;->g(IJ)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static e(Len5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILpl5;Lpl5;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Len5;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lpl5;",
            "Lpl5;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 1
    invoke-static {v1}, Lrl5;->e(I)I

    move-result v2

    .line 2
    invoke-static {p1, p2, v0, v1}, Lsl5;->i(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result p1

    .line 3
    invoke-static {p1}, Lrl5;->d(I)I

    move-result p2

    add-int/2addr p2, v2

    add-int/2addr p2, p1

    const/4 p1, 0x0

    add-int/2addr p2, p1

    .line 4
    array-length v0, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 5
    aget-object v4, p3, v3

    .line 6
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    invoke-static {v4, v5, p1, p1}, Lsl5;->i(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v4

    .line 7
    invoke-static {v4}, Lrl5;->d(I)I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, v1, p5}, Lsl5;->c(Len5;II)I

    move-result p0

    const/4 p1, 0x2

    .line 9
    invoke-static {p1}, Lrl5;->e(I)I

    move-result p1

    .line 10
    invoke-static {p0}, Lrl5;->d(I)I

    move-result p3

    add-int/2addr p3, p1

    add-int/2addr p3, p0

    add-int/2addr p3, p2

    .line 11
    invoke-static {}, Lsl5;->d()I

    move-result p0

    const/4 p1, 0x3

    .line 12
    invoke-static {p1}, Lrl5;->e(I)I

    move-result p2

    .line 13
    invoke-static {p0}, Lrl5;->d(I)I

    move-result p4

    add-int/2addr p4, p2

    add-int/2addr p4, p0

    add-int/2addr p4, p3

    .line 14
    invoke-static {p6, p7}, Lsl5;->a(Lpl5;Lpl5;)I

    move-result p0

    .line 15
    invoke-static {p1}, Lrl5;->e(I)I

    move-result p1

    .line 16
    invoke-static {p0}, Lrl5;->d(I)I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p2, p0

    add-int/2addr p2, p4

    return p2
.end method

.method public static f(Len5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILpl5;Lpl5;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Len5;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lpl5;",
            "Lpl5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)I"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p7}, Lsl5;->e(Len5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILpl5;Lpl5;)I

    move-result p0

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lrl5;->e(I)I

    move-result p2

    .line 3
    invoke-static {p0}, Lrl5;->d(I)I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p3, p0

    const/4 p0, 0x0

    add-int/2addr p3, p0

    if-eqz p8, :cond_0

    .line 4
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p5, p4}, Lsl5;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    const/4 p5, 0x2

    .line 6
    invoke-static {p5}, Lrl5;->e(I)I

    move-result p5

    .line 7
    invoke-static {p4}, Lrl5;->d(I)I

    move-result p6

    add-int/2addr p6, p5

    add-int/2addr p6, p4

    add-int/2addr p3, p6

    goto :goto_0

    :cond_0
    if-eqz p9, :cond_2

    const/4 p2, 0x3

    .line 8
    iget p4, p9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p5, 0x64

    if-eq p4, p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 9
    :goto_1
    invoke-static {p2, p1}, Lrl5;->a(IZ)I

    move-result p0

    add-int/2addr p3, p0

    :cond_2
    const/4 p0, 0x4

    .line 10
    invoke-static {p0, p10}, Lrl5;->f(II)I

    move-result p0

    add-int/2addr p0, p3

    return p0
.end method

.method public static g(Ljava/lang/Float;IZIJJ)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lrl5;->e(I)I

    move-result p0

    add-int/2addr p0, v0

    add-int/2addr v1, p0

    :cond_0
    const/4 p0, 0x2

    .line 3
    invoke-static {p0}, Lrl5;->e(I)I

    move-result p0

    shl-int/lit8 v2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v2

    .line 4
    invoke-static {p1}, Lrl5;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    add-int/2addr v1, p1

    const/4 p0, 0x3

    .line 5
    invoke-static {p0, p2}, Lrl5;->a(IZ)I

    move-result p0

    add-int/2addr p0, v1

    .line 6
    invoke-static {v0, p3}, Lrl5;->f(II)I

    move-result p1

    add-int/2addr p1, p0

    const/4 p0, 0x5

    .line 7
    invoke-static {p0, p4, p5}, Lrl5;->g(IJ)I

    move-result p0

    add-int/2addr p0, p1

    const/4 p1, 0x6

    .line 8
    invoke-static {p1, p6, p7}, Lrl5;->g(IJ)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static h(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Lrl5;->g(IJ)I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 3
    invoke-static {v1, v3, v4}, Lrl5;->g(IJ)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v1

    const/4 v3, 0x2

    .line 6
    invoke-static {v3, v1}, Lrl5;->b(ILpl5;)I

    move-result v1

    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v4

    invoke-static {v0, v4}, Lrl5;->b(ILpl5;)I

    move-result v0

    add-int/2addr v1, v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x4

    .line 10
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v0, v4, v5}, Lrl5;->g(IJ)I

    move-result p0

    add-int/2addr v1, p0

    :cond_2
    const/4 p0, 0x5

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    .line 11
    :cond_3
    invoke-static {p0, v2}, Lrl5;->f(II)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public static i(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lrl5;->b(ILpl5;)I

    move-result p0

    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p2}, Lrl5;->f(II)I

    move-result p2

    add-int/2addr p2, p0

    .line 3
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p1, v0

    .line 4
    invoke-static {v1, p3}, Lsl5;->h(Ljava/lang/StackTraceElement;Z)I

    move-result v1

    const/4 v2, 0x3

    .line 5
    invoke-static {v2}, Lrl5;->e(I)I

    move-result v2

    .line 6
    invoke-static {v1}, Lrl5;->d(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    add-int/2addr p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static j(Ljava/lang/String;)Lpl5;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static k(Lrl5;ILjava/lang/StackTraceElement;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    shl-int/2addr p1, v0

    const/4 v1, 0x2

    or-int/2addr p1, v1

    .line 1
    invoke-virtual {p0, p1}, Lrl5;->p(I)V

    .line 2
    invoke-static {p2, p3}, Lsl5;->h(Ljava/lang/StackTraceElement;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lrl5;->p(I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {p0, v3, v4, v5}, Lrl5;->t(IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 5
    invoke-virtual {p0, v3, v4, v5}, Lrl5;->t(IJ)V

    .line 6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v1, p1}, Lrl5;->m(ILpl5;)V

    .line 9
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lrl5;->m(ILpl5;)V

    .line 11
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    if-lez p1, :cond_2

    .line 12
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lrl5;->t(IJ)V

    :cond_2
    const/4 p1, 0x5

    if-eqz p3, :cond_3

    const/4 v2, 0x4

    .line 13
    :cond_3
    invoke-virtual {p0, p1, v2}, Lrl5;->s(II)V

    return-void
.end method

.method public static l(Lrl5;Len5;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    shl-int/2addr p4, v0

    or-int/lit8 p4, p4, 0x2

    .line 1
    invoke-virtual {p0, p4}, Lrl5;->p(I)V

    const/4 p4, 0x1

    .line 2
    invoke-static {p1, p4, p3}, Lsl5;->c(Len5;II)I

    move-result v1

    .line 3
    invoke-virtual {p0, v1}, Lrl5;->p(I)V

    .line 4
    iget-object v1, p1, Len5;->b:Ljava/lang/String;

    invoke-static {v1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lrl5;->m(ILpl5;)V

    .line 5
    iget-object v1, p1, Len5;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lrl5;->m(ILpl5;)V

    .line 7
    :cond_0
    iget-object v0, p1, Len5;->c:[Ljava/lang/StackTraceElement;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x4

    .line 8
    invoke-static {p0, v5, v4, p4}, Lsl5;->k(Lrl5;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Len5;->d:Len5;

    if-eqz p1, :cond_4

    if-ge p2, p3, :cond_2

    add-int/2addr p2, p4

    const/4 p4, 0x6

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lsl5;->l(Lrl5;Len5;III)V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p1, Len5;->d:Len5;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x7

    .line 12
    invoke-virtual {p0, p1, v2}, Lrl5;->s(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static m(Lrl5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lrl5;->r(II)V

    .line 2
    invoke-static {p1, p2, p3, p4}, Lsl5;->i(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v2

    .line 3
    invoke-virtual {p0, v2}, Lrl5;->p(I)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lrl5;->m(ILpl5;)V

    .line 5
    invoke-virtual {p0, v1, p3}, Lrl5;->s(II)V

    .line 6
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v0, p2, p3

    const/4 v1, 0x3

    .line 7
    invoke-static {p0, v1, v0, p4}, Lsl5;->k(Lrl5;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
