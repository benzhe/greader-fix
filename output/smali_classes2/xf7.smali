.class public final Lxf7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxf7$b;,
        Lxf7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final f:[Lw38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lw38<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final g:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>([Lw38;Ljava/lang/Iterable;Luc7;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw38<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lw38<",
            "+TT;>;>;",
            "Luc7<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Lxf7;->f:[Lw38;

    .line 3
    iput-object p3, p0, Lxf7;->g:Luc7;

    .line 4
    iput p4, p0, Lxf7;->h:I

    .line 5
    iput-boolean p5, p0, Lxf7;->i:Z

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxf7;->f:[Lw38;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v7, v0

    if-nez v7, :cond_0

    .line 4
    sget-object v0, Lmi7;->e:Lmi7;

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 5
    invoke-interface {p1}, Lx38;->a()V

    return-void

    .line 6
    :cond_0
    new-instance v8, Lxf7$a;

    iget-object v3, p0, Lxf7;->g:Luc7;

    iget v5, p0, Lxf7;->h:I

    iget-boolean v6, p0, Lxf7;->i:Z

    move-object v1, v8

    move-object v2, p1

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lxf7$a;-><init>(Lx38;Luc7;IIZ)V

    .line 7
    invoke-interface {p1, v8}, Lx38;->e(Ly38;)V

    .line 8
    iget-object p1, v8, Lxf7$a;->f:[Lxf7$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_2

    .line 9
    iget-boolean v2, v8, Lxf7$a;->k:Z

    if-nez v2, :cond_2

    iget-boolean v2, v8, Lxf7$a;->j:Z

    if-nez v2, :cond_1

    iget-object v2, v8, Lxf7$a;->i:Lsi7;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Lw38;->i(Lx38;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
