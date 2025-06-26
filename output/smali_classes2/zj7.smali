.class public final Lzj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj7;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Loj7<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public e:Lel7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lel7<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lel7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lel7<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzj7;->e:Lel7;

    .line 3
    sget-object p1, Lwj7;->a:Lwj7;

    iput-object p1, p0, Lzj7;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzj7;->f:Ljava/lang/Object;

    sget-object v1, Lwj7;->a:Lwj7;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lzj7;->e:Lel7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lel7;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lzj7;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lzj7;->e:Lel7;

    .line 4
    :cond_0
    iget-object v0, p0, Lzj7;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lzj7;->f:Ljava/lang/Object;

    sget-object v1, Lwj7;->a:Lwj7;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lzj7;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "Lazy value not initialized yet."

    :goto_1
    return-object v0
.end method
