.class public final Lvp7;
.super Lno7;
.source "SourceFile"


# instance fields
.field public final e:Lpl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpl7<",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lno7;-><init>()V

    iput-object p1, p0, Lvp7;->e:Lpl7;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvp7;->e:Lpl7;

    invoke-interface {v0, p1}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object v0, p0, Lvp7;->e:Lpl7;

    invoke-interface {v0, p1}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "InvokeOnCancel["

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvp7;->e:Lpl7;

    invoke-static {v1}, Ln56;->F0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ln56;->L0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
