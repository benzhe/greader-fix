.class public final Lje7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lje7$e;,
        Lje7$b;,
        Lje7$d;,
        Lje7$c;,
        Lje7$g;,
        Lje7$f;,
        Lje7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lob7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lob7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Lgb7;


# direct methods
.method public constructor <init>(Lob7;Lgb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lob7<",
            "TT;>;",
            "Lgb7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Lje7;->f:Lob7;

    .line 3
    iput-object p2, p0, Lje7;->g:Lgb7;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lje7;->g:Lgb7;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lje7$b;

    .line 3
    sget v1, Lmb7;->e:I

    .line 4
    invoke-direct {v0, p1, v1}, Lje7$b;-><init>(Lx38;I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lje7$e;

    invoke-direct {v0, p1}, Lje7$e;-><init>(Lx38;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lje7$c;

    invoke-direct {v0, p1}, Lje7$c;-><init>(Lx38;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lje7$d;

    invoke-direct {v0, p1}, Lje7$d;-><init>(Lx38;)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Lje7$f;

    invoke-direct {v0, p1}, Lje7$f;-><init>(Lx38;)V

    .line 9
    :goto_0
    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 10
    :try_start_0
    iget-object p1, p0, Lje7;->f:Lob7;

    invoke-interface {p1, v0}, Lob7;->a(Lnb7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v0, p1}, Lje7$a;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
