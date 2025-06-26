.class public final Lsg7;
.super Lrb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg7$a;,
        Lsg7$c;,
        Lsg7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrb7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final e:[Lvb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lvb7<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lvb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvb7<",
            "+TT;>;",
            "Luc7<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lrb7;-><init>()V

    .line 2
    iput-object p1, p0, Lsg7;->e:[Lvb7;

    .line 3
    iput-object p2, p0, Lsg7;->f:Luc7;

    return-void
.end method


# virtual methods
.method public m(Ltb7;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsg7;->e:[Lvb7;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    aget-object v0, v0, v2

    new-instance v1, Llg7$a;

    new-instance v2, Lsg7$a;

    invoke-direct {v2, p0}, Lsg7$a;-><init>(Lsg7;)V

    invoke-direct {v1, p1, v2}, Llg7$a;-><init>(Ltb7;Luc7;)V

    invoke-interface {v0, v1}, Lvb7;->a(Ltb7;)V

    return-void

    .line 4
    :cond_0
    new-instance v3, Lsg7$b;

    iget-object v4, p0, Lsg7;->f:Luc7;

    invoke-direct {v3, p1, v1, v4}, Lsg7$b;-><init>(Ltb7;ILuc7;)V

    .line 5
    invoke-interface {p1, v3}, Ltb7;->c(Lic7;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_4

    .line 6
    invoke-virtual {v3}, Lsg7$b;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 7
    :cond_1
    aget-object v4, v0, p1

    if-nez v4, :cond_3

    .line 8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "One of the sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 10
    invoke-virtual {v3, p1}, Lsg7$b;->a(I)V

    .line 11
    iget-object p1, v3, Lsg7$b;->e:Ltb7;

    invoke-interface {p1, v0}, Ltb7;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 13
    :cond_3
    iget-object v5, v3, Lsg7$b;->g:[Lsg7$c;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lvb7;->a(Ltb7;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
