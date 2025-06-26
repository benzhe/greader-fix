.class public final Lg78;
.super Lk78;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final e:[J

.field public final f:[La58;

.field public final g:[J

.field public final h:[Lq48;

.field public final i:[La58;

.field public final j:[Lj78;

.field public final k:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "[",
            "Li78;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([J[La58;[J[La58;[Lj78;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk78;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lg78;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    iput-object p1, p0, Lg78;->e:[J

    .line 4
    iput-object p2, p0, Lg78;->f:[La58;

    .line 5
    iput-object p3, p0, Lg78;->g:[J

    .line 6
    iput-object p4, p0, Lg78;->i:[La58;

    .line 7
    iput-object p5, p0, Lg78;->j:[Lj78;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_1

    .line 10
    aget-object p5, p4, p2

    add-int/lit8 v0, p2, 0x1

    .line 11
    aget-object v1, p4, v0

    .line 12
    new-instance v2, Li78;

    aget-wide v3, p3, p2

    invoke-direct {v2, v3, v4, p5, v1}, Li78;-><init>(JLa58;La58;)V

    .line 13
    invoke-virtual {v2}, Li78;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    iget-object p2, v2, Li78;->e:Lq48;

    .line 15
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2}, Li78;->i()Lq48;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v2}, Li78;->i()Lq48;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p2, v2, Li78;->e:Lq48;

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move p2, v0

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lq48;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lq48;

    iput-object p1, p0, Lg78;->h:[Lq48;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lf78;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lf78;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Lo48;)La58;
    .locals 7

    .line 1
    iget-wide v0, p1, Lo48;->e:J

    .line 2
    iget-object p1, p0, Lg78;->j:[Lj78;

    array-length p1, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lg78;->g:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p1, v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 3
    iget-object p1, p0, Lg78;->i:[La58;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    .line 4
    iget p1, p1, La58;->f:I

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/32 v4, 0x15180

    .line 5
    invoke-static {v2, v3, v4, v5}, Lkt7;->f(JJ)J

    move-result-wide v2

    .line 6
    invoke-static {v2, v3}, Lp48;->e0(J)Lp48;

    move-result-object p1

    .line 7
    iget p1, p1, Lp48;->e:I

    .line 8
    invoke-virtual {p0, p1}, Lg78;->g(I)[Li78;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 10
    aget-object v2, p1, v3

    .line 11
    iget-object v4, v2, Li78;->e:Lq48;

    iget-object v5, v2, Li78;->f:La58;

    invoke-virtual {v4, v5}, Lf58;->P(La58;)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 12
    iget-object p1, v2, Li78;->f:La58;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, v2, Li78;->g:La58;

    return-object p1

    .line 14
    :cond_2
    iget-object p1, p0, Lg78;->g:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_3

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    .line 15
    :cond_3
    iget-object v0, p0, Lg78;->i:[La58;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(Lq48;)Li78;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lg78;->h(Lq48;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Li78;

    if-eqz v0, :cond_0

    check-cast p1, Li78;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Lq48;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq48;",
            ")",
            "Ljava/util/List<",
            "La58;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg78;->h(Lq48;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Li78;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Li78;

    .line 4
    invoke-virtual {p1}, Li78;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [La58;

    const/4 v1, 0x0

    .line 6
    iget-object v2, p1, Li78;->f:La58;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 7
    iget-object p1, p1, Li78;->g:La58;

    aput-object p1, v0, v1

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    .line 9
    :cond_1
    check-cast p1, La58;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo48;)Z
    .locals 3

    .line 1
    iget-wide v0, p1, Lo48;->e:J

    .line 2
    iget-object v2, p0, Lg78;->e:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 3
    :cond_0
    iget-object v1, p0, Lg78;->f:[La58;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    .line 4
    invoke-virtual {p0, p1}, Lg78;->a(Lo48;)La58;

    move-result-object p1

    invoke-virtual {v0, p1}, La58;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg78;->g:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lg78;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lg78;

    .line 3
    iget-object v1, p0, Lg78;->e:[J

    iget-object v3, p1, Lg78;->e:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg78;->f:[La58;

    iget-object v3, p1, Lg78;->f:[La58;

    .line 4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg78;->g:[J

    iget-object v3, p1, Lg78;->g:[J

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg78;->i:[La58;

    iget-object v3, p1, Lg78;->i:[La58;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg78;->j:[Lj78;

    iget-object p1, p1, Lg78;->j:[Lj78;

    .line 7
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 8
    :cond_2
    instance-of v1, p1, Lk78$a;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lg78;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lo48;->g:Lo48;

    invoke-virtual {p0, v1}, Lg78;->a(Lo48;)La58;

    move-result-object v1

    check-cast p1, Lk78$a;

    .line 10
    iget-object p1, p1, Lk78$a;->e:La58;

    .line 11
    invoke-virtual {v1, p1}, La58;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public f(Lq48;La58;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg78;->c(Lq48;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g(I)[Li78;
    .locals 11

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lg78;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Li78;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v1, p0, Lg78;->j:[Lj78;

    .line 4
    array-length v2, v1

    new-array v2, v2, [Li78;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 6
    aget-object v5, v1, v4

    .line 7
    iget-byte v6, v5, Lj78;->f:B

    const/4 v7, 0x0

    if-gez v6, :cond_1

    .line 8
    iget-object v6, v5, Lj78;->e:Ls48;

    sget-object v8, Lo58;->g:Lo58;

    int-to-long v9, p1

    invoke-virtual {v8, v9, v10}, Lo58;->M(J)Z

    move-result v8

    invoke-virtual {v6, v8}, Ls48;->M(Z)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iget-byte v10, v5, Lj78;->f:B

    add-int/2addr v8, v10

    invoke-static {p1, v6, v8}, Lp48;->d0(ILs48;I)Lp48;

    move-result-object v6

    .line 9
    iget-object v8, v5, Lj78;->g:Lm48;

    if-eqz v8, :cond_2

    .line 10
    new-instance v10, Lx68;

    invoke-direct {v10, v9, v8, v7}, Lx68;-><init>(ILm48;Lw68;)V

    .line 11
    invoke-virtual {v6, v10}, Lp48;->l0(Lv68;)Lp48;

    move-result-object v6

    goto :goto_1

    .line 12
    :cond_1
    iget-object v8, v5, Lj78;->e:Ls48;

    invoke-static {p1, v8, v6}, Lp48;->d0(ILs48;I)Lp48;

    move-result-object v6

    .line 13
    iget-object v8, v5, Lj78;->g:Lm48;

    if-eqz v8, :cond_2

    .line 14
    new-instance v9, Lx68;

    invoke-direct {v9, v3, v8, v7}, Lx68;-><init>(ILm48;Lw68;)V

    .line 15
    invoke-virtual {v6, v9}, Lp48;->l0(Lv68;)Lp48;

    move-result-object v6

    .line 16
    :cond_2
    :goto_1
    iget v7, v5, Lj78;->i:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lp48;->g0(J)Lp48;

    move-result-object v6

    iget-object v7, v5, Lj78;->h:Lr48;

    invoke-static {v6, v7}, Lq48;->Y(Lp48;Lr48;)Lq48;

    move-result-object v6

    .line 17
    iget-object v7, v5, Lj78;->j:Lj78$a;

    iget-object v8, v5, Lj78;->k:La58;

    iget-object v9, v5, Lj78;->l:La58;

    .line 18
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v10, 0x2

    if-eq v7, v10, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    iget v7, v9, La58;->f:I

    iget v8, v8, La58;->f:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    .line 20
    invoke-virtual {v6, v7, v8}, Lq48;->d0(J)Lq48;

    move-result-object v6

    goto :goto_2

    .line 21
    :cond_4
    iget v7, v9, La58;->f:I

    .line 22
    sget-object v8, La58;->j:La58;

    .line 23
    iget v8, v8, La58;->f:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    .line 24
    invoke-virtual {v6, v7, v8}, Lq48;->d0(J)Lq48;

    move-result-object v6

    .line 25
    :goto_2
    new-instance v7, Li78;

    iget-object v8, v5, Lj78;->l:La58;

    iget-object v5, v5, Lj78;->m:La58;

    invoke-direct {v7, v6, v8, v5}, Li78;-><init>(Lq48;La58;La58;)V

    .line 26
    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x834

    if-ge p1, v1, :cond_6

    .line 27
    iget-object p1, p0, Lg78;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v2
.end method

.method public final h(Lq48;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lg78;->j:[Lj78;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_b

    iget-object v0, p0, Lg78;->h:[Lq48;

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v3, v0, Lq48;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lq48;->U(Lq48;)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p1, Lq48;->e:Lp48;

    .line 6
    invoke-virtual {v3}, Lp48;->Q()J

    move-result-wide v3

    .line 7
    iget-object v5, v0, Lq48;->e:Lp48;

    .line 8
    invoke-virtual {v5}, Lp48;->Q()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    if-nez v7, :cond_1

    .line 9
    iget-object v3, p1, Lq48;->f:Lr48;

    .line 10
    invoke-virtual {v3}, Lr48;->V()J

    move-result-wide v3

    .line 11
    iget-object v0, v0, Lq48;->f:Lr48;

    .line 12
    invoke-virtual {v0}, Lr48;->V()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_b

    .line 13
    iget-object v0, p1, Lq48;->e:Lp48;

    .line 14
    iget v0, v0, Lp48;->e:I

    .line 15
    invoke-virtual {p0, v0}, Lg78;->g(I)[Li78;

    move-result-object v0

    const/4 v2, 0x0

    .line 16
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_a

    aget-object v2, v0, v1

    .line 17
    iget-object v4, v2, Li78;->e:Lq48;

    .line 18
    invoke-virtual {v2}, Li78;->l()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {p1, v4}, Lq48;->W(Lf58;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    iget-object v4, v2, Li78;->f:La58;

    goto :goto_4

    .line 21
    :cond_3
    invoke-virtual {v2}, Li78;->i()Lq48;

    move-result-object v4

    invoke-virtual {p1, v4}, Lq48;->W(Lf58;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 22
    :cond_4
    iget-object v4, v2, Li78;->g:La58;

    goto :goto_4

    .line 23
    :cond_5
    invoke-virtual {p1, v4}, Lq48;->W(Lf58;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 24
    iget-object v4, v2, Li78;->g:La58;

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {v2}, Li78;->i()Lq48;

    move-result-object v4

    invoke-virtual {p1, v4}, Lq48;->W(Lf58;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 26
    iget-object v4, v2, Li78;->f:La58;

    goto :goto_4

    :cond_7
    :goto_3
    move-object v4, v2

    .line 27
    :goto_4
    instance-of v5, v4, Li78;

    if-nez v5, :cond_9

    .line 28
    iget-object v2, v2, Li78;->f:La58;

    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-object v2, v4

    goto :goto_2

    :cond_9
    :goto_5
    return-object v4

    :cond_a
    return-object v2

    .line 30
    :cond_b
    iget-object v0, p0, Lg78;->h:[Lq48;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 31
    iget-object p1, p0, Lg78;->i:[La58;

    aget-object p1, p1, v1

    return-object p1

    :cond_c
    if-gez p1, :cond_d

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    goto :goto_6

    .line 32
    :cond_d
    iget-object v0, p0, Lg78;->h:[Lq48;

    array-length v1, v0

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_e

    aget-object v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    aget-object v0, v0, v3

    .line 33
    invoke-virtual {v1, v0}, Lq48;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move p1, v3

    :cond_e
    :goto_6
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_10

    .line 34
    iget-object v0, p0, Lg78;->h:[Lq48;

    aget-object v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 35
    aget-object v0, v0, v3

    .line 36
    iget-object v3, p0, Lg78;->i:[La58;

    div-int/lit8 p1, p1, 0x2

    aget-object v4, v3, p1

    add-int/2addr p1, v2

    .line 37
    aget-object p1, v3, p1

    .line 38
    iget v2, p1, La58;->f:I

    iget v3, v4, La58;->f:I

    if-le v2, v3, :cond_f

    .line 39
    new-instance v0, Li78;

    invoke-direct {v0, v1, v4, p1}, Li78;-><init>(Lq48;La58;La58;)V

    return-object v0

    .line 40
    :cond_f
    new-instance v1, Li78;

    invoke-direct {v1, v0, v4, p1}, Li78;-><init>(Lq48;La58;La58;)V

    return-object v1

    .line 41
    :cond_10
    iget-object v0, p0, Lg78;->i:[La58;

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lg78;->e:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    iget-object v1, p0, Lg78;->f:[La58;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lg78;->g:[J

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lg78;->i:[La58;

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lg78;->j:[Lj78;

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "StandardZoneRules[currentStandardOffset="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg78;->f:[La58;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
