.class public final Lyt5;
.super Lfu5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt5$a;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final c:Lyt5$a;

.field public d:Lhu5;


# direct methods
.method public constructor <init>(Lbu5;Lju5;Lhu5;Lyt5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfu5;-><init>(Lbu5;Lju5;)V

    .line 2
    iput-object p4, p0, Lyt5;->c:Lyt5$a;

    .line 3
    iput-object p3, p0, Lyt5;->d:Lhu5;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyt5;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyt5;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(Leu5;)Lbd6;
    .locals 1

    .line 1
    iget-object v0, p0, Lyt5;->d:Lhu5;

    invoke-virtual {v0, p1}, Lhu5;->c(Leu5;)Lbd6;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lyt5;->c:Lyt5$a;

    sget-object v1, Lyt5$a;->f:Lyt5$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lyt5;->c:Lyt5$a;

    sget-object v1, Lyt5$a;->e:Lyt5$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lyt5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lyt5;

    .line 3
    iget-object v1, p0, Lfu5;->b:Lju5;

    iget-object v3, p1, Lfu5;->b:Lju5;

    .line 4
    invoke-virtual {v1, v3}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lfu5;->a:Lbu5;

    iget-object v3, p1, Lfu5;->a:Lbu5;

    .line 6
    invoke-virtual {v1, v3}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyt5;->c:Lyt5$a;

    iget-object v3, p1, Lyt5;->c:Lyt5$a;

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyt5;->d:Lhu5;

    iget-object p1, p1, Lyt5;->d:Lhu5;

    .line 8
    invoke-virtual {v1, p1}, Lhu5;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfu5;->a:Lbu5;

    .line 2
    invoke-virtual {v0}, Lbu5;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lfu5;->b:Lju5;

    .line 4
    invoke-virtual {v1}, Lju5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lyt5;->c:Lyt5$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lyt5;->d:Lhu5;

    invoke-virtual {v1}, Lhu5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Document{key="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfu5;->a:Lbu5;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lyt5;->d:Lhu5;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lfu5;->b:Lju5;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", documentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyt5;->c:Lyt5$a;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
