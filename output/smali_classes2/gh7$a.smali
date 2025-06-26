.class public final Lgh7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgh7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcc7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lcc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcc7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lgh7;


# direct methods
.method public constructor <init>(Lgh7;Lcc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lgh7$a;->f:Lgh7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lgh7$a;->e:Lcc7;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgh7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgh7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->c(Lic7;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lgh7$a;->f:Lgh7;

    iget-object v0, v0, Lgh7;->f:Ltc7;

    invoke-interface {v0, p1}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lgh7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lgh7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->b(Ljava/lang/Throwable;)V

    return-void
.end method
