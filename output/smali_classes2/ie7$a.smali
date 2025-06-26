.class public abstract Lie7$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Lie7$e;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lie7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lpb7<",
        "TT;>;",
        "Lie7$e<",
        "TR;>;",
        "Ly38;"
    }
.end annotation


# instance fields
.field public final e:Lie7$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lie7$d<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:I

.field public i:Ly38;

.field public j:I

.field public k:Lnd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnd7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile l:Z

.field public volatile m:Z

.field public final n:Lsi7;

.field public volatile o:Z

.field public p:I


# direct methods
.method public constructor <init>(Luc7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lie7$a;->f:Luc7;

    .line 3
    iput p2, p0, Lie7$a;->g:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lie7$a;->h:I

    .line 5
    new-instance p1, Lie7$d;

    invoke-direct {p1, p0}, Lie7$d;-><init>(Lie7$e;)V

    iput-object p1, p0, Lie7$a;->e:Lie7$d;

    .line 6
    new-instance p1, Lsi7;

    invoke-direct {p1}, Lsi7;-><init>()V

    iput-object p1, p0, Lie7$a;->n:Lsi7;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lie7$a;->l:Z

    .line 2
    invoke-virtual {p0}, Lie7$a;->h()V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lie7$a;->p:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lie7$a;->k:Lnd7;

    invoke-interface {v0, p1}, Lnd7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lie7$a;->i:Ly38;

    invoke-interface {p1}, Ly38;->cancel()V

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lie7$a;->h()V

    return-void
.end method

.method public final e(Ly38;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lie7$a;->i:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lie7$a;->i:Ly38;

    .line 3
    instance-of v0, p1, Lkd7;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lkd7;

    const/4 v1, 0x7

    .line 5
    invoke-interface {v0, v1}, Ljd7;->i(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iput v1, p0, Lie7$a;->p:I

    .line 7
    iput-object v0, p0, Lie7$a;->k:Lnd7;

    .line 8
    iput-boolean v2, p0, Lie7$a;->l:Z

    .line 9
    invoke-virtual {p0}, Lie7$a;->i()V

    .line 10
    invoke-virtual {p0}, Lie7$a;->h()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 11
    iput v1, p0, Lie7$a;->p:I

    .line 12
    iput-object v0, p0, Lie7$a;->k:Lnd7;

    .line 13
    invoke-virtual {p0}, Lie7$a;->i()V

    .line 14
    iget v0, p0, Lie7$a;->g:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Lth7;

    iget v1, p0, Lie7$a;->g:I

    invoke-direct {v0, v1}, Lth7;-><init>(I)V

    iput-object v0, p0, Lie7$a;->k:Lnd7;

    .line 16
    invoke-virtual {p0}, Lie7$a;->i()V

    .line 17
    iget v0, p0, Lie7$a;->g:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_2
    return-void
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method
