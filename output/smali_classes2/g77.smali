.class public Lg77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ld77;


# direct methods
.method public constructor <init>(Ld77;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg77;->f:Ld77;

    iput-object p2, p0, Lg77;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget-object v0, Li37;->f:Li37;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lg77;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lg77;->f:Ld77;

    .line 4
    iget-object v2, v2, Ld77;->l:Ld77$f;

    .line 5
    invoke-virtual {v2}, Ld77$f;->a()Ljava/net/SocketAddress;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lg77;->f:Ld77;

    .line 7
    iget-object v3, v3, Ld77;->l:Ld77$f;

    .line 8
    iput-object v1, v3, Ld77$f;->a:Ljava/util/List;

    .line 9
    invoke-virtual {v3}, Ld77$f;->b()V

    .line 10
    iget-object v3, p0, Lg77;->f:Ld77;

    .line 11
    iput-object v1, v3, Ld77;->m:Ljava/util/List;

    .line 12
    iget-object v1, p0, Lg77;->f:Ld77;

    .line 13
    iget-object v1, v1, Ld77;->u:Lj37;

    .line 14
    iget-object v1, v1, Lj37;->a:Li37;

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    .line 15
    iget-object v1, p0, Lg77;->f:Ld77;

    .line 16
    iget-object v1, v1, Ld77;->u:Lj37;

    .line 17
    iget-object v1, v1, Lj37;->a:Li37;

    .line 18
    sget-object v4, Li37;->e:Li37;

    if-ne v1, v4, :cond_4

    .line 19
    :cond_0
    iget-object v1, p0, Lg77;->f:Ld77;

    .line 20
    iget-object v1, v1, Ld77;->l:Ld77$f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 21
    :goto_0
    iget-object v6, v1, Ld77$f;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 22
    iget-object v6, v1, Ld77$f;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq37;

    .line 23
    iget-object v6, v6, Lq37;->a:Ljava/util/List;

    .line 24
    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_1
    iput v5, v1, Ld77$f;->b:I

    .line 26
    iput v6, v1, Ld77$f;->c:I

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_4

    .line 27
    iget-object v1, p0, Lg77;->f:Ld77;

    .line 28
    iget-object v1, v1, Ld77;->u:Lj37;

    .line 29
    iget-object v1, v1, Lj37;->a:Li37;

    if-ne v1, v0, :cond_3

    .line 30
    iget-object v0, p0, Lg77;->f:Ld77;

    .line 31
    iget-object v0, v0, Ld77;->t:Lc87;

    .line 32
    iget-object v1, p0, Lg77;->f:Ld77;

    .line 33
    iput-object v3, v1, Ld77;->t:Lc87;

    .line 34
    iget-object v1, p0, Lg77;->f:Ld77;

    .line 35
    iget-object v1, v1, Ld77;->l:Ld77$f;

    .line 36
    invoke-virtual {v1}, Ld77$f;->b()V

    .line 37
    iget-object v1, p0, Lg77;->f:Ld77;

    sget-object v2, Li37;->h:Li37;

    invoke-static {v1, v2}, Ld77;->h(Ld77;Li37;)V

    move-object v3, v0

    goto :goto_1

    .line 38
    :cond_3
    iget-object v0, p0, Lg77;->f:Ld77;

    .line 39
    iget-object v1, v0, Ld77;->s:Ld67;

    .line 40
    iput-object v3, v0, Ld77;->s:Ld67;

    .line 41
    iget-object v0, v0, Ld77;->l:Ld77$f;

    .line 42
    invoke-virtual {v0}, Ld77$f;->b()V

    .line 43
    iget-object v0, p0, Lg77;->f:Ld77;

    invoke-static {v0}, Ld77;->i(Ld77;)V

    move-object v3, v1

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 44
    sget-object v0, Lx47;->n:Lx47;

    const-string v1, "InternalSubchannel closed transport due to address change"

    .line 45
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 46
    invoke-interface {v3, v0}, Lc87;->b(Lx47;)V

    :cond_5
    return-void
.end method
