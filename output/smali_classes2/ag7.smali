.class public final Lag7;
.super Lrb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lub7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lub7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lub7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lrb7;-><init>()V

    .line 2
    iput-object p1, p0, Lag7;->e:Lub7;

    return-void
.end method


# virtual methods
.method public m(Ltb7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lag7$a;

    invoke-direct {v0, p1}, Lag7$a;-><init>(Ltb7;)V

    .line 2
    invoke-interface {p1, v0}, Ltb7;->c(Lic7;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lag7;->e:Lub7;

    invoke-interface {p1, v0}, Lub7;->a(Lsb7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lag7$a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
