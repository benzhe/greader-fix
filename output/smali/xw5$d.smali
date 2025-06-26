.class public final Lxw5$d;
.super Lxw5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxw5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lxw5$e;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lqi6;

.field public final d:Lx47;


# direct methods
.method public constructor <init>(Lxw5$e;Ljava/util/List;Lqi6;Lx47;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxw5$e;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lqi6;",
            "Lx47;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lxw5;-><init>(Lxw5$a;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    .line 2
    sget-object v2, Lxw5$e;->g:Lxw5$e;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Got cause for a target change that was not a removal"

    invoke-static {v2, v3, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lxw5$d;->a:Lxw5$e;

    .line 4
    iput-object p2, p0, Lxw5$d;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lxw5$d;->c:Lqi6;

    if-eqz p4, :cond_2

    .line 6
    invoke-virtual {p4}, Lx47;->f()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iput-object p4, p0, Lxw5$d;->d:Lx47;

    goto :goto_2

    .line 8
    :cond_2
    iput-object v0, p0, Lxw5$d;->d:Lx47;

    :goto_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 1
    const-class v2, Lxw5$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lxw5$d;

    .line 3
    iget-object v2, p0, Lxw5$d;->a:Lxw5$e;

    iget-object v3, p1, Lxw5$d;->a:Lxw5$e;

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lxw5$d;->b:Ljava/util/List;

    iget-object v3, p1, Lxw5$d;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lxw5$d;->c:Lqi6;

    iget-object v3, p1, Lxw5$d;->c:Lqi6;

    invoke-virtual {v2, v3}, Lqi6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Lxw5$d;->d:Lx47;

    if-eqz v2, :cond_6

    .line 7
    iget-object p1, p1, Lxw5$d;->d:Lx47;

    if-eqz p1, :cond_5

    .line 8
    iget-object v2, v2, Lx47;->a:Lx47$b;

    iget-object p1, p1, Lx47;->a:Lx47$b;

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 10
    :cond_6
    iget-object p1, p1, Lxw5$d;->d:Lx47;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lxw5$d;->a:Lxw5$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lxw5$d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lxw5$d;->c:Lqi6;

    invoke-virtual {v0}, Lqi6;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lxw5$d;->d:Lx47;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v1, Lx47;->a:Lx47$b;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "WatchTargetChange{changeType="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lxw5$d;->a:Lxw5$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxw5$d;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
