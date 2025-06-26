.class public Li67$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz57;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public final a:Lz57;

.field public volatile b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz57;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li67$n;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Li67$n;->a:Lz57;

    return-void
.end method


# virtual methods
.method public a(Lc97$a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li67$n;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li67$n;->a:Lz57;

    invoke-interface {v0, p1}, Lc97;->a(Lc97$a;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li67$n$a;

    invoke-direct {v0, p0, p1}, Li67$n$a;-><init>(Li67$n;Lc97$a;)V

    invoke-virtual {p0, v0}, Li67$n;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public b(Lx47;Li47;)V
    .locals 1

    .line 1
    new-instance v0, Li67$n$d;

    invoke-direct {v0, p0, p1, p2}, Li67$n$d;-><init>(Li67$n;Lx47;Li47;)V

    invoke-virtual {p0, v0}, Li67$n;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Li47;)V
    .locals 1

    .line 1
    new-instance v0, Li67$n$c;

    invoke-direct {v0, p0, p1}, Li67$n$c;-><init>(Li67$n;Li47;)V

    invoke-virtual {p0, v0}, Li67$n;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li67$n;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li67$n;->a:Lz57;

    invoke-interface {v0}, Lc97;->d()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li67$n$b;

    invoke-direct {v0, p0}, Li67$n$b;-><init>(Li67$n;)V

    invoke-virtual {p0, v0}, Li67$n;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public e(Lx47;Lz57$a;Li47;)V
    .locals 1

    .line 1
    new-instance v0, Li67$n$e;

    invoke-direct {v0, p0, p1, p2, p3}, Li67$n$e;-><init>(Li67$n;Lx47;Lz57$a;Li47;)V

    invoke-virtual {p0, v0}, Li67$n;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Li67$n;->b:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Li67$n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
