.class public final Lwu5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lwu5;


# instance fields
.field public final a:Lju5;

.field public final b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwu5;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lwu5;-><init>(Lju5;Ljava/lang/Boolean;)V

    sput-object v0, Lwu5;->c:Lwu5;

    return-void
.end method

.method public constructor <init>(Lju5;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Precondition can specify \"exists\" or \"updateTime\" but not both"

    .line 2
    invoke-static {v1, v2, v0}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lwu5;->a:Lju5;

    .line 4
    iput-object p2, p0, Lwu5;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Z)Lwu5;
    .locals 2

    .line 1
    new-instance v0, Lwu5;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lwu5;-><init>(Lju5;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwu5;->a:Lju5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lwu5;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Lfu5;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lwu5;->a:Lju5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    instance-of v3, p1, Lyt5;

    if-eqz v3, :cond_0

    .line 3
    iget-object p1, p1, Lfu5;->b:Lju5;

    .line 4
    invoke-virtual {p1, v0}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lwu5;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    instance-of p1, p1, Lyt5;

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lwu5;->b()Z

    move-result p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Precondition should be empty"

    invoke-static {p1, v2, v0}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Lwu5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lwu5;

    .line 3
    iget-object v2, p0, Lwu5;->a:Lju5;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lwu5;->a:Lju5;

    invoke-virtual {v2, v3}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lwu5;->a:Lju5;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lwu5;->b:Ljava/lang/Boolean;

    iget-object p1, p1, Lwu5;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lwu5;->a:Lju5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lju5;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lwu5;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lwu5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Precondition{<none>}"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lwu5;->a:Lju5;

    const-string v1, "}"

    if-eqz v0, :cond_1

    const-string v0, "Precondition{updateTime="

    .line 3
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lwu5;->a:Lju5;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lwu5;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string v0, "Precondition{exists="

    .line 5
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lwu5;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Invalid Precondition"

    .line 6
    invoke-static {v1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0
.end method
