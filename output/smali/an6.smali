.class public Lan6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lrm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrm6<",
            "Ljava/lang/String;",
            "Lbn6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lrm6;

    invoke-direct {v0}, Lrm6;-><init>()V

    iput-object v0, p0, Lan6;->a:Lrm6;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lbn6;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lan6;->a:Lrm6;

    invoke-virtual {v0, p1, p2}, Lrm6;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter handler must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lan6;->a:Lrm6;

    invoke-virtual {v0, p1}, Lrm6;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Lbn6;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lbn6;

    .line 2
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 3
    invoke-interface {v2, p2}, Lbn6;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    array-length p1, p1

    return p1
.end method
