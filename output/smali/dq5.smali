.class public final Ldq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcr5$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldq5$a;,
        Ldq5$b;
    }
.end annotation


# instance fields
.field public final a:Lcr5;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lyq5;",
            "Ldq5$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lvo5<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Lwq5;


# direct methods
.method public constructor <init>(Lcr5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldq5;->c:Ljava/util/Set;

    .line 3
    sget-object v0, Lwq5;->e:Lwq5;

    iput-object v0, p0, Ldq5;->d:Lwq5;

    .line 4
    iput-object p1, p0, Ldq5;->a:Lcr5;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldq5;->b:Ljava/util/Map;

    .line 6
    iput-object p0, p1, Lcr5;->n:Lcr5$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmr5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmr5;

    .line 2
    iget-object v2, v1, Lmr5;->a:Lyq5;

    .line 3
    iget-object v3, p0, Ldq5;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldq5$b;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v2, Ldq5$b;->a:Ljava/util/List;

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzq5;

    .line 6
    invoke-virtual {v4, v1}, Lzq5;->b(Lmr5;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iput-object v1, v2, Ldq5$b;->b:Lmr5;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0}, Ldq5;->b()V

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldq5;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvo5;

    const/4 v2, 0x0

    .line 2
    invoke-interface {v1, v2, v2}, Lvo5;->a(Ljava/lang/Object;Lzo5;)V

    goto :goto_0

    :cond_0
    return-void
.end method
