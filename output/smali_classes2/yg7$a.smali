.class public final Lyg7$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lic7;
.implements Lyb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyg7$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lic7;",
        "Lyb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljb7;

.field public final f:Lsi7;

.field public final g:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Llb7;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:Lhc7;

.field public j:Lic7;

.field public volatile k:Z


# direct methods
.method public constructor <init>(Ljb7;Luc7;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb7;",
            "Luc7<",
            "-TT;+",
            "Llb7;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lyg7$a;->e:Ljb7;

    .line 3
    iput-object p2, p0, Lyg7$a;->g:Luc7;

    .line 4
    iput-boolean p3, p0, Lyg7$a;->h:Z

    .line 5
    new-instance p1, Lsi7;

    invoke-direct {p1}, Lsi7;-><init>()V

    iput-object p1, p0, Lyg7$a;->f:Lsi7;

    .line 6
    new-instance p1, Lhc7;

    invoke-direct {p1}, Lhc7;-><init>()V

    iput-object p1, p0, Lyg7$a;->i:Lhc7;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lyg7$a;->f:Lsi7;

    .line 3
    invoke-static {v0}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lyg7$a;->e:Ljb7;

    invoke-interface {v1, v0}, Ljb7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lyg7$a;->e:Ljb7;

    invoke-interface {v0}, Ljb7;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyg7$a;->f:Lsi7;

    .line 2
    invoke-static {v0, p1}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lyg7$a;->h:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lyg7$a;->f:Lsi7;

    .line 6
    invoke-static {p1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lyg7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lyg7$a;->k()V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 10
    iget-object p1, p0, Lyg7$a;->f:Lsi7;

    .line 11
    invoke-static {p1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lyg7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyg7$a;->j:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lyg7$a;->j:Lic7;

    .line 3
    iget-object p1, p0, Lyg7$a;->e:Ljb7;

    invoke-interface {p1, p0}, Ljb7;->c(Lic7;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lyg7$a;->g:Luc7;

    invoke-interface {v0, p1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast p1, Llb7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 5
    new-instance v0, Lyg7$a$a;

    invoke-direct {v0, p0}, Lyg7$a$a;-><init>(Lyg7$a;)V

    .line 6
    iget-boolean v1, p0, Lyg7$a;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lyg7$a;->i:Lhc7;

    invoke-virtual {v1, v0}, Lhc7;->b(Lic7;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1, v0}, Llb7;->a(Ljb7;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lyg7$a;->j:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    .line 10
    invoke-virtual {p0, p1}, Lyg7$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lyg7$a;->k:Z

    .line 2
    iget-object v0, p0, Lyg7$a;->j:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    .line 3
    iget-object v0, p0, Lyg7$a;->i:Lhc7;

    invoke-virtual {v0}, Lhc7;->k()V

    return-void
.end method
