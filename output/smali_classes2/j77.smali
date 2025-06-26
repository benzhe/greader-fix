.class public Lj77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Ld77;


# direct methods
.method public constructor <init>(Ld77;Lx47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj77;->f:Ld77;

    iput-object p2, p0, Lj77;->e:Lx47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lj77;->f:Ld77;

    .line 2
    iget-object v1, v1, Ld77;->q:Ljava/util/Collection;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc87;

    .line 5
    iget-object v2, p0, Lj77;->e:Lx47;

    invoke-interface {v1, v2}, Lc87;->c(Lx47;)V

    goto :goto_0

    :cond_0
    return-void
.end method
