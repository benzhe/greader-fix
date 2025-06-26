.class public Lxq5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxq5$a;
    }
.end annotation


# instance fields
.field public final a:Lxq5$a;

.field public final b:Leu5;


# direct methods
.method public constructor <init>(Lxq5$a;Leu5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxq5;->a:Lxq5$a;

    .line 3
    iput-object p2, p0, Lxq5;->b:Leu5;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Lxq5;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lxq5;

    .line 3
    iget-object v1, p0, Lxq5;->a:Lxq5$a;

    iget-object v2, p1, Lxq5;->a:Lxq5$a;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lxq5;->b:Leu5;

    iget-object p1, p1, Lxq5;->b:Leu5;

    invoke-virtual {v1, p1}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lxq5;->a:Lxq5$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x383

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lxq5;->b:Leu5;

    invoke-virtual {v1}, Lvt5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lxq5;->a:Lxq5$a;

    sget-object v2, Lxq5$a;->f:Lxq5$a;

    if-ne v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxq5;->b:Leu5;

    invoke-virtual {v1}, Leu5;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
