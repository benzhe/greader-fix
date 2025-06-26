.class public final Lyq5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyq5$b;,
        Lyq5$a;
    }
.end annotation


# static fields
.field public static final k:Lxq5;

.field public static final l:Lxq5;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxq5;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxq5;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ldr5;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfq5;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Liu5;

.field public final f:Ljava/lang/String;

.field public final g:J

.field public final h:Lyq5$a;

.field public final i:Lyp5;

.field public final j:Lyp5;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lxq5$a;->f:Lxq5$a;

    sget-object v1, Leu5;->f:Leu5;

    .line 2
    new-instance v2, Lxq5;

    invoke-direct {v2, v0, v1}, Lxq5;-><init>(Lxq5$a;Leu5;)V

    .line 3
    sput-object v2, Lyq5;->k:Lxq5;

    .line 4
    sget-object v0, Lxq5$a;->g:Lxq5$a;

    .line 5
    new-instance v2, Lxq5;

    invoke-direct {v2, v0, v1}, Lxq5;-><init>(Lxq5$a;Leu5;)V

    .line 6
    sput-object v2, Lyq5;->l:Lxq5;

    return-void
.end method

.method public constructor <init>(Liu5;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLyq5$a;Lyp5;Lyp5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liu5;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfq5;",
            ">;",
            "Ljava/util/List<",
            "Lxq5;",
            ">;J",
            "Lyq5$a;",
            "Lyp5;",
            "Lyp5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyq5;->e:Liu5;

    .line 3
    iput-object p2, p0, Lyq5;->f:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lyq5;->a:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lyq5;->d:Ljava/util/List;

    .line 6
    iput-wide p5, p0, Lyq5;->g:J

    .line 7
    iput-object p7, p0, Lyq5;->h:Lyq5$a;

    .line 8
    iput-object p8, p0, Lyq5;->i:Lyp5;

    .line 9
    iput-object p9, p0, Lyq5;->j:Lyp5;

    return-void
.end method

.method public static a(Liu5;)Lyq5;
    .locals 11

    .line 1
    new-instance v10, Lyq5;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v7, Lyq5$a;->e:Lyq5$a;

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object v0, v10

    move-object v1, p0

    .line 4
    invoke-direct/range {v0 .. v9}, Lyq5;-><init>(Liu5;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLyq5$a;Lyp5;Lyp5;)V

    return-object v10
.end method


# virtual methods
.method public b()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lyt5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lyq5$b;

    invoke-virtual {p0}, Lyq5;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lyq5$b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public c()Leu5;
    .locals 2

    .line 1
    iget-object v0, p0, Lyq5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lyq5;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq5;

    .line 3
    iget-object v0, v0, Lxq5;->b:Leu5;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxq5;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lxq5$a;->f:Lxq5$a;

    iget-object v1, p0, Lyq5;->b:Ljava/util/List;

    if-nez v1, :cond_9

    .line 2
    iget-object v1, p0, Lyq5;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfq5;

    .line 3
    instance-of v6, v2, Leq5;

    if-eqz v6, :cond_0

    .line 4
    check-cast v2, Leq5;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x6

    new-array v6, v6, [Lfq5$a;

    .line 6
    sget-object v7, Lfq5$a;->f:Lfq5$a;

    aput-object v7, v6, v4

    sget-object v7, Lfq5$a;->g:Lfq5$a;

    aput-object v7, v6, v5

    sget-object v7, Lfq5$a;->j:Lfq5$a;

    aput-object v7, v6, v3

    sget-object v7, Lfq5$a;->k:Lfq5$a;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    sget-object v7, Lfq5$a;->i:Lfq5$a;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    sget-object v7, Lfq5$a;->o:Lfq5$a;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v2, Leq5;->a:Lfq5$a;

    .line 7
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    iget-object v1, v2, Leq5;->c:Leu5;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lyq5;->c()Leu5;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v1}, Leu5;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v0, Lyq5;->k:Lxq5;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyq5;->b:Ljava/util/List;

    goto :goto_4

    :cond_2
    new-array v2, v3, [Lxq5;

    .line 12
    new-instance v3, Lxq5;

    invoke-direct {v3, v0, v1}, Lxq5;-><init>(Lxq5$a;Leu5;)V

    aput-object v3, v2, v4

    .line 13
    sget-object v0, Lyq5;->k:Lxq5;

    aput-object v0, v2, v5

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyq5;->b:Ljava/util/List;

    goto :goto_4

    .line 15
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v2, p0, Lyq5;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxq5;

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v3, v3, Lxq5;->b:Leu5;

    .line 19
    sget-object v6, Leu5;->f:Leu5;

    invoke-virtual {v3, v6}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_8

    .line 20
    iget-object v2, p0, Lyq5;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 21
    iget-object v2, p0, Lyq5;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxq5;

    .line 22
    iget-object v2, v2, Lxq5;->a:Lxq5$a;

    goto :goto_2

    :cond_6
    move-object v2, v0

    .line 23
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lyq5;->k:Lxq5;

    goto :goto_3

    :cond_7
    sget-object v0, Lyq5;->l:Lxq5;

    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_8
    iput-object v1, p0, Lyq5;->b:Ljava/util/List;

    .line 25
    :cond_9
    :goto_4
    iget-object v0, p0, Lyq5;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lyq5;->h:Lyq5$a;

    sget-object v1, Lyq5$a;->e:Lyq5$a;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lyq5;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v1, Lyq5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lyq5;

    .line 3
    iget-object v1, p0, Lyq5;->h:Lyq5$a;

    iget-object v2, p1, Lyq5;->h:Lyq5$a;

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lyq5;->i()Ldr5;

    move-result-object v0

    invoke-virtual {p1}, Lyq5;->i()Ldr5;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldr5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lyq5;->h:Lyq5$a;

    sget-object v1, Lyq5$a;->f:Lyq5$a;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lyq5;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyq5;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Lyt5;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Lfu5;->a:Lbu5;

    .line 2
    iget-object v1, v0, Lbu5;->e:Liu5;

    .line 3
    iget-object v2, p0, Lyq5;->f:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v1}, Lvt5;->I()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    iget-object v0, v0, Lbu5;->e:Liu5;

    iget-object v5, v0, Lvt5;->e:Ljava/util/List;

    invoke-virtual {v0}, Lvt5;->I()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lyq5;->e:Liu5;

    invoke-virtual {v0, v1}, Lvt5;->D(Lvt5;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Lyq5;->e:Liu5;

    invoke-static {v0}, Lbu5;->l(Liu5;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lyq5;->e:Liu5;

    invoke-virtual {v0, v1}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lyq5;->e:Liu5;

    invoke-virtual {v0, v1}, Lvt5;->D(Lvt5;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyq5;->e:Liu5;

    invoke-virtual {v0}, Lvt5;->I()I

    move-result v0

    invoke-virtual {v1}, Lvt5;->I()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_1

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_a

    .line 9
    iget-object v0, p0, Lyq5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxq5;

    .line 10
    iget-object v2, v1, Lxq5;->b:Leu5;

    .line 11
    sget-object v5, Leu5;->f:Leu5;

    invoke-virtual {v2, v5}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, v1, Lxq5;->b:Leu5;

    invoke-virtual {p1, v1}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_a

    .line 12
    iget-object v0, p0, Lyq5;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfq5;

    .line 13
    invoke-virtual {v1, p1}, Lfq5;->b(Lyt5;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_a

    .line 14
    iget-object v0, p0, Lyq5;->i:Lyp5;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lyq5;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lyp5;->b(Ljava/util/List;Lyt5;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_5
    const/4 p1, 0x0

    goto :goto_6

    .line 15
    :cond_8
    iget-object v0, p0, Lyq5;->j:Lyp5;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lyq5;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lyp5;->b(Ljava/util/List;Lyt5;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 p1, 0x1

    :goto_6
    if-eqz p1, :cond_a

    const/4 v3, 0x1

    :cond_a
    return v3
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lyq5;->i()Ldr5;

    move-result-object v0

    invoke-virtual {v0}, Ldr5;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyq5;->h:Lyq5$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public i()Ldr5;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lyq5;->c:Ldr5;

    if-nez v1, :cond_5

    .line 2
    iget-object v1, v0, Lyq5;->h:Lyq5$a;

    sget-object v2, Lyq5$a;->e:Lyq5$a;

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Ldr5;

    .line 4
    iget-object v4, v0, Lyq5;->e:Liu5;

    .line 5
    iget-object v5, v0, Lyq5;->f:Ljava/lang/String;

    .line 6
    iget-object v6, v0, Lyq5;->d:Ljava/util/List;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lyq5;->d()Ljava/util/List;

    move-result-object v7

    iget-wide v8, v0, Lyq5;->g:J

    .line 8
    iget-object v10, v0, Lyq5;->i:Lyp5;

    .line 9
    iget-object v11, v0, Lyq5;->j:Lyp5;

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v11}, Ldr5;-><init>(Liu5;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLyp5;Lyp5;)V

    iput-object v1, v0, Lyq5;->c:Ldr5;

    goto :goto_2

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lyq5;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxq5;

    .line 13
    iget-object v4, v3, Lxq5;->a:Lxq5$a;

    .line 14
    sget-object v5, Lxq5$a;->g:Lxq5$a;

    if-ne v4, v5, :cond_1

    .line 15
    sget-object v5, Lxq5$a;->f:Lxq5$a;

    .line 16
    :cond_1
    iget-object v3, v3, Lxq5;->b:Leu5;

    .line 17
    new-instance v4, Lxq5;

    invoke-direct {v4, v5, v3}, Lxq5;-><init>(Lxq5$a;Leu5;)V

    .line 18
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    iget-object v2, v0, Lyq5;->j:Lyp5;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    new-instance v4, Lyp5;

    .line 20
    iget-object v5, v2, Lyp5;->b:Ljava/util/List;

    .line 21
    iget-boolean v2, v2, Lyp5;->a:Z

    xor-int/lit8 v2, v2, 0x1

    .line 22
    invoke-direct {v4, v5, v2}, Lyp5;-><init>(Ljava/util/List;Z)V

    move-object/from16 v19, v4

    goto :goto_1

    :cond_3
    move-object/from16 v19, v3

    .line 23
    :goto_1
    iget-object v2, v0, Lyq5;->i:Lyp5;

    if-eqz v2, :cond_4

    .line 24
    new-instance v3, Lyp5;

    .line 25
    iget-object v4, v2, Lyp5;->b:Ljava/util/List;

    .line 26
    iget-boolean v2, v2, Lyp5;->a:Z

    xor-int/lit8 v2, v2, 0x1

    .line 27
    invoke-direct {v3, v4, v2}, Lyp5;-><init>(Ljava/util/List;Z)V

    :cond_4
    move-object/from16 v20, v3

    .line 28
    new-instance v2, Ldr5;

    .line 29
    iget-object v13, v0, Lyq5;->e:Liu5;

    .line 30
    iget-object v14, v0, Lyq5;->f:Ljava/lang/String;

    .line 31
    iget-object v15, v0, Lyq5;->d:Ljava/util/List;

    .line 32
    iget-wide v3, v0, Lyq5;->g:J

    move-object v12, v2

    move-object/from16 v16, v1

    move-wide/from16 v17, v3

    invoke-direct/range {v12 .. v20}, Ldr5;-><init>(Liu5;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLyp5;Lyp5;)V

    iput-object v2, v0, Lyq5;->c:Ldr5;

    .line 33
    :cond_5
    :goto_2
    iget-object v1, v0, Lyq5;->c:Ldr5;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Query(target="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lyq5;->i()Ldr5;

    move-result-object v1

    invoke-virtual {v1}, Ldr5;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";limitType="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lyq5;->h:Lyq5$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
