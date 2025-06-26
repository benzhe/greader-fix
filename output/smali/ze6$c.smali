.class public final Lze6$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lze6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lze6;


# direct methods
.method public constructor <init>(Lze6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lze6$c;->e:Lze6;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lze6$c;->e:Lze6;

    invoke-virtual {v0}, Lze6;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lze6$c;->e:Lze6;

    .line 2
    invoke-virtual {v0, p1}, Lze6;->c(Ljava/lang/Object;)Lze6$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lze6$c$a;

    invoke-direct {v0, p0}, Lze6$c$a;-><init>(Lze6$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lze6$c;->e:Lze6;

    .line 2
    invoke-virtual {v0, p1}, Lze6;->c(Ljava/lang/Object;)Lze6$e;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1, v1}, Lze6;->e(Lze6$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lze6$c;->e:Lze6;

    iget v0, v0, Lze6;->g:I

    return v0
.end method
