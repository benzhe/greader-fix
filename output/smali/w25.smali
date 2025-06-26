.class public final Lw25;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ln54;

.field public d:Ljava/util/BitSet;

.field public e:Ljava/util/BitSet;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lb35;


# direct methods
.method public synthetic constructor <init>(Lb35;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lw25;->h:Lb35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw25;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw25;->b:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lw25;->d:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lw25;->e:Ljava/util/BitSet;

    new-instance p1, Lf4;

    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lw25;->f:Ljava/util/Map;

    new-instance p1, Lf4;

    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lw25;->g:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lb35;Ljava/lang/String;Ln54;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lw25;->h:Lb35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw25;->a:Ljava/lang/String;

    iput-object p4, p0, Lw25;->d:Ljava/util/BitSet;

    iput-object p5, p0, Lw25;->e:Ljava/util/BitSet;

    iput-object p6, p0, Lw25;->f:Ljava/util/Map;

    new-instance p1, Lf4;

    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lw25;->g:Ljava/util/Map;

    move-object p1, p7

    check-cast p1, Lf4;

    invoke-virtual {p1}, Lf4;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ll4$c;

    invoke-virtual {p1}, Ll4$c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object p2, p1

    check-cast p2, Ll4$a;

    invoke-virtual {p2}, Ll4$a;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    move-object p5, p7

    check-cast p5, Lm4;

    invoke-virtual {p5, p2}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lw25;->g:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lw25;->b:Z

    iput-object p3, p0, Lw25;->c:Ln54;

    return-void
.end method


# virtual methods
.method public final a(Lz25;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lz25;->a()I

    move-result v0

    iget-object v1, p1, Lz25;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lw25;->e:Ljava/util/BitSet;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v1, p1, Lz25;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lw25;->d:Ljava/util/BitSet;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v1, p1, Lz25;->e:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lw25;->f:Ljava/util/Map;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v5, p1, Lz25;->e:Ljava/lang/Long;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v2

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lw25;->f:Ljava/util/Map;

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p1, Lz25;->f:Ljava/lang/Long;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lw25;->g:Ljava/util/Map;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lw25;->g:Ljava/util/Map;

    .line 10
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lz25;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    :cond_5
    invoke-static {}, Lbd4;->b()Z

    iget-object v0, p0, Lw25;->h:Lb35;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 13
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 14
    iget-object v4, p0, Lw25;->a:Ljava/lang/String;

    .line 15
    sget-object v5, Lew4;->b0:Ldw4;

    invoke-virtual {v0, v4, v5}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p1}, Lz25;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 18
    :cond_6
    invoke-static {}, Lbd4;->b()Z

    iget-object v0, p0, Lw25;->h:Lb35;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 19
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 20
    iget-object v4, p0, Lw25;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v4, v5}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lz25;->f:Ljava/lang/Long;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p1, p1, Lz25;->f:Ljava/lang/Long;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public final b(I)Lu44;
    .locals 8

    .line 1
    invoke-static {}, Lu44;->z()Lt44;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lz84;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lz84;->j()V

    iput-boolean v2, v0, Lz84;->g:Z

    :cond_0
    iget-object v1, v0, Lz84;->f:Lc94;

    .line 4
    check-cast v1, Lu44;

    invoke-static {v1, p1}, Lu44;->B(Lu44;I)V

    .line 5
    iget-boolean p1, p0, Lw25;->b:Z

    .line 6
    iget-boolean v1, v0, Lz84;->g:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lz84;->j()V

    iput-boolean v2, v0, Lz84;->g:Z

    :cond_1
    iget-object v1, v0, Lz84;->f:Lc94;

    .line 8
    check-cast v1, Lu44;

    invoke-static {v1, p1}, Lu44;->E(Lu44;Z)V

    .line 9
    iget-object p1, p0, Lw25;->c:Ln54;

    if-eqz p1, :cond_3

    .line 10
    iget-boolean v1, v0, Lz84;->g:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0}, Lz84;->j()V

    iput-boolean v2, v0, Lz84;->g:Z

    :cond_2
    iget-object v1, v0, Lz84;->f:Lc94;

    .line 12
    check-cast v1, Lu44;

    invoke-static {v1, p1}, Lu44;->D(Lu44;Ln54;)V

    .line 13
    :cond_3
    invoke-static {}, Ln54;->C()Lm54;

    move-result-object p1

    iget-object v1, p0, Lw25;->d:Ljava/util/BitSet;

    .line 14
    invoke-static {v1}, Ll25;->B(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    .line 15
    iget-boolean v3, p1, Lz84;->g:Z

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {p1}, Lz84;->j()V

    iput-boolean v2, p1, Lz84;->g:Z

    :cond_4
    iget-object v3, p1, Lz84;->f:Lc94;

    .line 17
    check-cast v3, Ln54;

    invoke-static {v3, v1}, Ln54;->H(Ln54;Ljava/lang/Iterable;)V

    .line 18
    iget-object v1, p0, Lw25;->e:Ljava/util/BitSet;

    .line 19
    invoke-static {v1}, Ll25;->B(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    .line 20
    iget-boolean v3, p1, Lz84;->g:Z

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {p1}, Lz84;->j()V

    iput-boolean v2, p1, Lz84;->g:Z

    :cond_5
    iget-object v3, p1, Lz84;->f:Lc94;

    .line 22
    check-cast v3, Ln54;

    invoke-static {v3, v1}, Ln54;->F(Ln54;Ljava/lang/Iterable;)V

    .line 23
    iget-object v1, p0, Lw25;->f:Ljava/util/Map;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    .line 24
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lw25;->f:Ljava/util/Map;

    .line 26
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 27
    invoke-static {}, Lw44;->w()Lv44;

    move-result-object v5

    .line 28
    iget-boolean v6, v5, Lz84;->g:Z

    if-eqz v6, :cond_7

    .line 29
    invoke-virtual {v5}, Lz84;->j()V

    iput-boolean v2, v5, Lz84;->g:Z

    :cond_7
    iget-object v6, v5, Lz84;->f:Lc94;

    .line 30
    check-cast v6, Lw44;

    invoke-static {v6, v4}, Lw44;->y(Lw44;I)V

    .line 31
    iget-object v6, p0, Lw25;->f:Ljava/util/Map;

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 33
    iget-boolean v4, v5, Lz84;->g:Z

    if-eqz v4, :cond_8

    .line 34
    invoke-virtual {v5}, Lz84;->j()V

    iput-boolean v2, v5, Lz84;->g:Z

    :cond_8
    iget-object v4, v5, Lz84;->f:Lc94;

    .line 35
    check-cast v4, Lw44;

    invoke-static {v4, v6, v7}, Lw44;->z(Lw44;J)V

    .line 36
    invoke-virtual {v5}, Lz84;->g()Lc94;

    move-result-object v4

    check-cast v4, Lw44;

    .line 37
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    move-object v1, v3

    .line 38
    :goto_1
    iget-boolean v3, p1, Lz84;->g:Z

    if-eqz v3, :cond_a

    .line 39
    invoke-virtual {p1}, Lz84;->j()V

    iput-boolean v2, p1, Lz84;->g:Z

    :cond_a
    iget-object v3, p1, Lz84;->f:Lc94;

    .line 40
    check-cast v3, Ln54;

    invoke-static {v3, v1}, Ln54;->J(Ln54;Ljava/lang/Iterable;)V

    .line 41
    iget-object v1, p0, Lw25;->g:Ljava/util/Map;

    if-nez v1, :cond_b

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 43
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lw25;->g:Ljava/util/Map;

    .line 45
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 46
    invoke-static {}, Lp54;->x()Lo54;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 47
    iget-boolean v7, v5, Lz84;->g:Z

    if-eqz v7, :cond_c

    .line 48
    invoke-virtual {v5}, Lz84;->j()V

    iput-boolean v2, v5, Lz84;->g:Z

    :cond_c
    iget-object v7, v5, Lz84;->f:Lc94;

    .line 49
    check-cast v7, Lp54;

    invoke-static {v7, v6}, Lp54;->z(Lp54;I)V

    .line 50
    iget-object v6, p0, Lw25;->g:Ljava/util/Map;

    .line 51
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_e

    .line 52
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 53
    iget-boolean v6, v5, Lz84;->g:Z

    if-eqz v6, :cond_d

    .line 54
    invoke-virtual {v5}, Lz84;->j()V

    iput-boolean v2, v5, Lz84;->g:Z

    :cond_d
    iget-object v6, v5, Lz84;->f:Lc94;

    .line 55
    check-cast v6, Lp54;

    invoke-static {v6, v4}, Lp54;->A(Lp54;Ljava/lang/Iterable;)V

    .line 56
    :cond_e
    invoke-virtual {v5}, Lz84;->g()Lc94;

    move-result-object v4

    check-cast v4, Lp54;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    move-object v1, v3

    .line 57
    :goto_3
    iget-boolean v3, p1, Lz84;->g:Z

    if-eqz v3, :cond_10

    .line 58
    invoke-virtual {p1}, Lz84;->j()V

    iput-boolean v2, p1, Lz84;->g:Z

    :cond_10
    iget-object v3, p1, Lz84;->f:Lc94;

    .line 59
    check-cast v3, Ln54;

    invoke-static {v3, v1}, Ln54;->L(Ln54;Ljava/lang/Iterable;)V

    .line 60
    iget-boolean v1, v0, Lz84;->g:Z

    if-eqz v1, :cond_11

    .line 61
    invoke-virtual {v0}, Lz84;->j()V

    iput-boolean v2, v0, Lz84;->g:Z

    :cond_11
    iget-object v1, v0, Lz84;->f:Lc94;

    .line 62
    check-cast v1, Lu44;

    invoke-virtual {p1}, Lz84;->g()Lc94;

    move-result-object p1

    check-cast p1, Ln54;

    invoke-static {v1, p1}, Lu44;->C(Lu44;Ln54;)V

    .line 63
    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object p1

    check-cast p1, Lu44;

    return-object p1
.end method
