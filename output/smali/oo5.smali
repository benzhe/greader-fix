.class public Loo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Loo5;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lqi6;


# direct methods
.method public constructor <init>(Lqi6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loo5;->e:Lqi6;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Loo5;

    .line 2
    iget-object v0, p0, Loo5;->e:Lqi6;

    iget-object p1, p1, Loo5;->e:Lqi6;

    invoke-static {v0, p1}, Lvx5;->a(Lqi6;Lqi6;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Loo5;

    if-eqz v0, :cond_0

    iget-object v0, p0, Loo5;->e:Lqi6;

    check-cast p1, Loo5;

    iget-object p1, p1, Loo5;->e:Lqi6;

    invoke-virtual {v0, p1}, Lqi6;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Loo5;->e:Lqi6;

    invoke-virtual {v0}, Lqi6;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Blob { bytes="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loo5;->e:Lqi6;

    invoke-static {v1}, Lvx5;->e(Lqi6;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
