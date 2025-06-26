.class public Lf4;
.super Lm4;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lm4<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public l:Ll4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm4;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lm4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lm4;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lm4;-><init>(Lm4;)V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf4;->l()Ll4;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ll4;->a:Ll4$b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ll4$b;

    invoke-direct {v1, v0}, Ll4$b;-><init>(Ll4;)V

    iput-object v1, v0, Ll4;->a:Ll4$b;

    .line 4
    :cond_0
    iget-object v0, v0, Ll4;->a:Ll4$b;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf4;->l()Ll4;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ll4;->b:Ll4$c;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ll4$c;

    invoke-direct {v1, v0}, Ll4$c;-><init>(Ll4;)V

    iput-object v1, v0, Ll4;->b:Ll4$c;

    .line 4
    :cond_0
    iget-object v0, v0, Ll4;->b:Ll4$c;

    return-object v0
.end method

.method public final l()Ll4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf4;->l:Ll4;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf4$a;

    invoke-direct {v0, p0}, Lf4$a;-><init>(Lf4;)V

    iput-object v0, p0, Lf4;->l:Ll4;

    .line 3
    :cond_0
    iget-object v0, p0, Lf4;->l:Ll4;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lm4;->g:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lm4;->b(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf4;->l()Ll4;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ll4;->c:Ll4$e;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ll4$e;

    invoke-direct {v1, v0}, Ll4$e;-><init>(Ll4;)V

    iput-object v1, v0, Ll4;->c:Ll4$e;

    .line 4
    :cond_0
    iget-object v0, v0, Ll4;->c:Ll4$e;

    return-object v0
.end method
