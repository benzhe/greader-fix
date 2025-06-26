.class public abstract Lqu5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbu5;

.field public final b:Lwu5;


# direct methods
.method public constructor <init>(Lbu5;Lwu5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqu5;->a:Lbu5;

    .line 3
    iput-object p2, p0, Lqu5;->b:Lwu5;

    return-void
.end method


# virtual methods
.method public abstract a(Lfu5;Lfu5;Lcom/google/firebase/Timestamp;)Lfu5;
.end method

.method public abstract b(Lfu5;Ltu5;)Lfu5;
.end method

.method public abstract c(Lfu5;)Lhu5;
.end method

.method public d(Lqu5;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lqu5;->a:Lbu5;

    iget-object v1, p1, Lqu5;->a:Lbu5;

    invoke-virtual {v0, v1}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqu5;->b:Lwu5;

    iget-object p1, p1, Lqu5;->b:Lwu5;

    invoke-virtual {v0, p1}, Lwu5;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lqu5;->a:Lbu5;

    .line 2
    invoke-virtual {v0}, Lbu5;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lqu5;->b:Lwu5;

    invoke-virtual {v1}, Lwu5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    const-string v0, "key="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqu5;->a:Lbu5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", precondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqu5;->b:Lwu5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Lfu5;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lfu5;->a:Lbu5;

    .line 2
    iget-object v0, p0, Lqu5;->a:Lbu5;

    .line 3
    invoke-virtual {p1, v0}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Can only apply a mutation to a document with the same key"

    .line 4
    invoke-static {p1, v1, v0}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
