.class public final Lr94;
.super Ls94;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls94;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Llb4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li94;

    .line 2
    invoke-interface {p1}, Li94;->b()V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p3, p4}, Llb4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li94;

    .line 2
    invoke-static {p2, p3, p4}, Llb4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li94;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 5
    invoke-interface {v0}, Li94;->a()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 6
    invoke-interface {v0, v2}, Li94;->w(I)Li94;

    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 8
    :goto_0
    sget-object v0, Llb4;->e:Lkb4;

    .line 9
    invoke-virtual {v0, p1, p3, p4, p2}, Lkb4;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
