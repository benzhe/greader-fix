.class public final Lsg7$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ltb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ltb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lsg7$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsg7$b<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Lsg7$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsg7$b<",
            "TT;*>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lsg7$c;->e:Lsg7$b;

    .line 3
    iput p2, p0, Lsg7$c;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsg7$c;->e:Lsg7$b;

    iget v1, p0, Lsg7$c;->f:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lsg7$b;->a(I)V

    .line 4
    iget-object v0, v0, Lsg7$b;->e:Ltb7;

    invoke-interface {v0}, Ltb7;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsg7$c;->e:Lsg7$b;

    iget v1, p0, Lsg7$c;->f:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lsg7$b;->a(I)V

    .line 4
    iget-object v0, v0, Lsg7$b;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsg7$c;->e:Lsg7$b;

    iget v1, p0, Lsg7$c;->f:I

    .line 2
    iget-object v2, v0, Lsg7$b;->h:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, v0, Lsg7$b;->f:Luc7;

    iget-object v1, v0, Lsg7$b;->h:[Ljava/lang/Object;

    invoke-interface {p1, v1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The zipper returned a null value"

    .line 5
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, v0, Lsg7$b;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, v0, Lsg7$b;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
