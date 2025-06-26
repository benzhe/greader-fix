.class public final Lwd6;
.super Ltd6;
.source "SourceFile"


# instance fields
.field public final a:Lze6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze6<",
            "Ljava/lang/String;",
            "Ltd6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltd6;-><init>()V

    .line 2
    new-instance v0, Lze6;

    invoke-direct {v0}, Lze6;-><init>()V

    iput-object v0, p0, Lwd6;->a:Lze6;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Lwd6;

    if-eqz v0, :cond_0

    check-cast p1, Lwd6;

    iget-object p1, p1, Lwd6;->a:Lze6;

    iget-object v0, p0, Lwd6;->a:Lze6;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lwd6;->a:Lze6;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method
