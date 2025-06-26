.class public final Ltg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lug;

.field public final b:Lsg;


# direct methods
.method public constructor <init>(Lug;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltg;->a:Lug;

    .line 3
    new-instance p1, Lsg;

    invoke-direct {p1}, Lsg;-><init>()V

    iput-object p1, p0, Ltg;->b:Lsg;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltg;->a:Lug;

    invoke-interface {v0}, Ldd;->getLifecycle()Lad;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Led;

    .line 3
    iget-object v1, v1, Led;->b:Lad$b;

    .line 4
    sget-object v2, Lad$b;->f:Lad$b;

    if-ne v1, v2, :cond_2

    .line 5
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Ltg;->a:Lug;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Lug;)V

    invoke-virtual {v0, v1}, Lad;->a(Lcd;)V

    .line 6
    iget-object v1, p0, Ltg;->b:Lsg;

    .line 7
    iget-boolean v2, v1, Lsg;->c:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    const-string v2, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v1, Lsg;->b:Landroid/os/Bundle;

    .line 9
    :cond_0
    new-instance p1, Landroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {p1, v1}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Lsg;)V

    invoke-virtual {v0, p1}, Lad;->a(Lcd;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v1, Lsg;->c:Z

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltg;->b:Lsg;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v0, Lsg;->b:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 6
    :cond_0
    iget-object v0, v0, Lsg;->a:Lo3;

    .line 7
    invoke-virtual {v0}, Lo3;->h()Lo3$d;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lo3$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0}, Lo3$d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsg$b;

    invoke-interface {v2}, Lsg$b;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
