.class public final Loh7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
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
            "-TR;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcc7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TR;>;",
            "Luc7<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loh7$a;->e:Lcc7;

    .line 3
    iput-object p2, p0, Loh7$a;->f:Luc7;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Loh7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Loh7$a;->e:Lcc7;

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
    iget-object v0, p0, Loh7$a;->f:Luc7;

    invoke-interface {v0, p1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Loh7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p1}, Loh7$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method
