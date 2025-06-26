.class public final Lj37;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li37;

.field public final b:Lx47;


# direct methods
.method public constructor <init>(Li37;Lx47;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "state is null"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Li37;

    iput-object p1, p0, Lj37;->a:Li37;

    const-string p1, "status is null"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lx47;

    iput-object p2, p0, Lj37;->b:Lx47;

    return-void
.end method

.method public static a(Li37;)Lj37;
    .locals 2

    .line 1
    sget-object v0, Li37;->g:Li37;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "state is TRANSIENT_ERROR. Use forError() instead"

    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lj37;

    sget-object v1, Lx47;->f:Lx47;

    invoke-direct {v0, p0, v1}, Lj37;-><init>(Li37;Lx47;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lj37;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lj37;

    .line 3
    iget-object v0, p0, Lj37;->a:Li37;

    iget-object v2, p1, Lj37;->a:Li37;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj37;->b:Lx47;

    iget-object p1, p1, Lj37;->b:Lx47;

    invoke-virtual {v0, p1}, Lx47;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lj37;->a:Li37;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj37;->b:Lx47;

    invoke-virtual {v1}, Lx47;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lj37;->b:Lx47;

    invoke-virtual {v0}, Lx47;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj37;->a:Li37;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj37;->a:Li37;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj37;->b:Lx47;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
